import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection=new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child:  new Text("Programming tutorials Channel",
                        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),

                    ),
                  ),

                  new Text("This channel contains tutorial videos in Flutter, react native, react, angular",
                      style: new TextStyle(color: Colors.green[600], fontSize: 16.0))
                ],
              )
          ),

          new Icon(Icons.favorite, color: Colors.red,),
          new Text("  100", style: new TextStyle(fontSize: 25.0)),
        ],
      ),
    );

    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor=Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon (icon, color:tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w500, color: tintColor),),
          )
        ],
      );
    }

    Widget fourButtonSection=new Container(
      child:new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      )
    );

    final bottomTextSection=new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Text("I am Trinh Van Vinh. I live in HaNoi, VietNam.! I am learning Node JS, Angular, JavaScript, ReactJS, React Native, "
          "Android, IOS, Kotlin, new Technolagies overide.",
      style: new TextStyle(
        color: Colors.grey[850],
        fontSize: 16.0
      ),),
    );

    // TODO: implement build
    return new MaterialApp(
      title: "",
     home: new Scaffold(
       appBar: new AppBar(
         title: new Text('Flutter App'),
       ),
//       body: new Center(
//         child: new Text('This is a layout example'),
//       ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/modic.jpg',
              fit:BoxFit.cover
            ),
            titleSection,
            fourButtonSection,
            bottomTextSection
          ],
        ),
     ),
    );
  }
}
