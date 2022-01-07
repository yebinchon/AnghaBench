
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double SCREEN_HEIGHT ;
 double SCREEN_WIDTH ;
 int UI_CENTER ;
 int UI_DrawString (double,double,char*,int,int ) ;
 int UI_SMALLFONT ;
 int colorBlack ;

__attribute__((used)) static void Controls_StatusBar( void *self )
{
 UI_DrawString(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.80, "Use Arrow Keys or CLICK to change", UI_SMALLFONT|UI_CENTER, colorBlack );
}
