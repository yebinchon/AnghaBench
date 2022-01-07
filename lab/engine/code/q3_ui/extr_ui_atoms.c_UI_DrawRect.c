
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int whiteShader; } ;


 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_R_DrawStretchPic (float,float,int,float,int ,int ,int ,int ,int ) ;
 int trap_R_SetColor (float const*) ;
 TYPE_1__ uis ;

void UI_DrawRect( float x, float y, float width, float height, const float *color ) {
 trap_R_SetColor( color );

 UI_AdjustFrom640( &x, &y, &width, &height );

 trap_R_DrawStretchPic( x, y, width, 1, 0, 0, 0, 0, uis.whiteShader );
 trap_R_DrawStretchPic( x, y, 1, height, 0, 0, 0, 0, uis.whiteShader );
 trap_R_DrawStretchPic( x, y + height - 1, width, 1, 0, 0, 0, 0, uis.whiteShader );
 trap_R_DrawStretchPic( x + width - 1, y, 1, height, 0, 0, 0, 0, uis.whiteShader );

 trap_R_SetColor( ((void*)0) );
}
