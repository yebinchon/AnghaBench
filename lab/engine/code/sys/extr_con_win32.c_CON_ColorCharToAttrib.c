
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 char COLOR_WHITE ;
 size_t ColorIndex (char) ;
 int FOREGROUND_BLUE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_INTENSITY ;
 int FOREGROUND_RED ;
 float** g_color_table ;
 int qconsole_attrib ;
 int qconsole_backgroundAttrib ;

__attribute__((used)) static WORD CON_ColorCharToAttrib( char color ) {
 WORD attrib;

 if ( color == COLOR_WHITE )
 {

  attrib = qconsole_attrib;
 }
 else
 {
  float *rgba = g_color_table[ ColorIndex( color ) ];


  attrib = ( rgba[0] >= 0.5 ? FOREGROUND_RED : 0 ) |
    ( rgba[1] >= 0.5 ? FOREGROUND_GREEN : 0 ) |
    ( rgba[2] >= 0.5 ? FOREGROUND_BLUE : 0 ) |
    ( rgba[3] >= 0.5 ? FOREGROUND_INTENSITY : 0 );


  attrib |= qconsole_backgroundAttrib;
 }

 return attrib;
}
