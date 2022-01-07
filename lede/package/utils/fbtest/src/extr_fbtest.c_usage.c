
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,char*,char*) ;

void usage(char *name){
  printf ("Usage: %s [options]\n"
  "Options: -f<pixelformat>\n"
  "            where format is one of:\n"
  "              CLUT4,CLUT8,ARGB1555,RGB565,ARGB\n"
  "         -s<width>x<heigth>\n"
  "            where width is either 720,640,360,320\n"
  "                  and height is either 288,240,480,576\n"
  "         -n\n"
  "            disables clearing the framebuffer after drawing\n"
  "            the testimage. This can be useful to keep the last\n"
  "            drawn image onscreen.\n"
  "\nExample: %s -fRGB322\n",name,name);
 exit(0);
}
