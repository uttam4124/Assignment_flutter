import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final priceController = TextEditingController();
  List<String> names = [
    "Shirt",
    "T-shirt",
    "Trousers",
    "Blazers",
    "Women Suit",
    "Kurti",
  ];
  // List<String> networkURL = [
  //   // "https://cdn-icons-png.flaticon.com/128/2503/2503376.png",
  //   "https://cdn-icons-png.flaticon.com/128/717/717492.png",
  //   "https://cdn-icons-png.flaticon.com/128/664/664466.png",
  //   "https://cdn-icons-png.flaticon.com/128/10537/10537104.png",
  //   "https://cdn-icons-png.flaticon.com/128/2093/2093874.png",
  //   "https://cdn-icons-png.flaticon.com/128/5864/5864696.png"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center( 
          child: Text(
            "Washing",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: names.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 55.0,
                            height: 55.0,
                            child:CircleAvatar(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.transparent,
                              backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/128/3322/3322056.png"),

                            )
                            ),
                        SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              names[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                        width: 78,
                        child: TextFormField(
                          controller: priceController,
                          autofocus: true,
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Price/Item',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))),
          onPressed: () {
            // Handle submit button press
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Submit',
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
