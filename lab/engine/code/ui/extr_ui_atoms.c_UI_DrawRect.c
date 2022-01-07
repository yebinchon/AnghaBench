
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_DrawSides (float,float,float,float) ;
 int UI_DrawTopBottom (float,float,float,float) ;
 int trap_R_SetColor (float const*) ;

void UI_DrawRect( float x, float y, float width, float height, const float *color ) {
 trap_R_SetColor( color );

  UI_DrawTopBottom(x, y, width, height);
  UI_DrawSides(x, y, width, height);

 trap_R_SetColor( ((void*)0) );
}
