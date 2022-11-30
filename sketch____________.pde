int bgWidth = 600;
int bgHeight = 600;
float lineSize = 0;
float colSize = 0;

color[] colors = {#ffffff, #ff0000, #ffff00, #0000ff, #000000};


void mondrianStyle() {
  for (int line = 0; line < bgHeight; line += lineSize + 3) {
    lineSize = random(4, bgWidth/3);
    for (int col = 0; col < bgWidth; col += colSize + 3) {
      colSize = random(4, bgHeight/2);


      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);


      strokeWeight(3);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, bgWidth, y);
      line(x, line, x, y);
    }
  }
}

void setup() {
  size(600, 600);
  background(#ffffff);
  mondrianStyle();
}

void draw() {
  if (mousePressed) {
    mondrianStyle();
    save("mondarian.tif");
  }
}
