
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float xscale; int whiteShader; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_R_DrawStretchPic (float,float,float,float,int ,int ,int ,int ,int ) ;
 TYPE_2__ uiInfo ;

void _UI_DrawSides(float x, float y, float w, float h, float size) {
 UI_AdjustFrom640( &x, &y, &w, &h );
 size *= uiInfo.uiDC.xscale;
 trap_R_DrawStretchPic( x, y, size, h, 0, 0, 0, 0, uiInfo.uiDC.whiteShader );
 trap_R_DrawStretchPic( x + w - size, y, size, h, 0, 0, 0, 0, uiInfo.uiDC.whiteShader );
}
