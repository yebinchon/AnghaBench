
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* centerPrint; int centerPrintY; int centerPrintCharWidth; int centerPrintLines; int time; int centerPrintTime; } ;


 int Q_strncpyz (char*,char const*,int) ;
 TYPE_1__ cg ;

void CG_CenterPrint( const char *str, int y, int charWidth ) {
 char *s;

 Q_strncpyz( cg.centerPrint, str, sizeof(cg.centerPrint) );

 cg.centerPrintTime = cg.time;
 cg.centerPrintY = y;
 cg.centerPrintCharWidth = charWidth;


 cg.centerPrintLines = 1;
 s = cg.centerPrint;
 while( *s ) {
  if (*s == '\n')
   cg.centerPrintLines++;
  s++;
 }
}
