import processing.sound.*;
int totalSongs= 1;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;
color purple = #D003FF;
color yellow = #FAFF03;
color boarder = purple, inside = yellow; // Matches descritption of image
PImage[] pic = new PImage[1];
color blue=#3C03FF;
color Purple=#B610E5;
color Yellow=#ECF50C;
color red=#FA0317;
int lcolor = blue;
void setup () {
  
  pic[0] = loadImage("images.png");
  image(pic[0],0,0,600,600);
  
  song[0] = new SoundFile (this, "Chance The Rapper - Angels (feat. Saba) [Coloring Book].mp3");
song[0] .play();
size(600,600);


fill(red);
rect(0,0,40,40);
fill(Yellow);
rect(0,60,40,40);
fill(Purple);
rect(0,120,40,40);
fill(blue);
rect(0,180,40,40);

}







void draw (){  
  fill(boarder);
  rect(500, 550, 100, 50);
  fill(inside);
  rect(500+10, 550+10, 100-10-10, 50-10-10);

  // Hovering Effect
  if (mouseX > 500 && mouseX < 600 && mouseY > 550 && mouseY < 600) {
    boarder = yellow;
    inside = purple;
  } else {
    boarder = purple;
    inside = yellow;
  } // End of IF for Hovering Effect
  
  //On double screen, able to see mouseX & mouseY and the hover-over effect at the same time

}

void mousePressed () {
  if (mouseX>=500 && mouseX <=600 && mouseY>=550 && mouseY<=600) {
    exit ();
  }
 
   if (mouseX>=0 && mouseX <=40 && mouseY>=0 && mouseY<=40) { 
       lcolor=red;
   }
        if (mouseX>=0 && mouseX <=40 && mouseY>=60 && mouseY<=100) { 
       lcolor=Yellow;
         }
        if (mouseX>=0 && mouseX <=40 && mouseY>=120 && mouseY<=160) { 
       lcolor=Purple;  
        }
        if (mouseX>=0 && mouseX <=40 && mouseY>=180 && mouseY<=220) {
          lcolor=blue;
        }

        


  
  
  strokeWeight(12);
  stroke(lcolor);
line(mouseX, mouseY, pmouseX, pmouseY);
strokeWeight(1);
  
}


void mouseDragged() {
strokeWeight(12);
stroke(lcolor);
line(mouseX, mouseY, pmouseX, pmouseY);
strokeWeight(1);

  
}  