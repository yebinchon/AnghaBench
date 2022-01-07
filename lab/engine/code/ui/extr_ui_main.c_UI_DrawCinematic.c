
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vidHeight; scalar_t__ vidWidth; } ;
struct TYPE_5__ {TYPE_1__ glconfig; } ;
struct TYPE_6__ {TYPE_2__ uiDC; } ;


 float SCREEN_HEIGHT ;
 float SCREEN_WIDTH ;
 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 int trap_CIN_DrawCinematic (int) ;
 int trap_CIN_SetExtents (int,float,float,float,float) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_DrawCinematic(int handle, float x, float y, float w, float h) {

 UI_AdjustFrom640( &x, &y, &w, &h );


 x *= SCREEN_WIDTH / (float)uiInfo.uiDC.glconfig.vidWidth;
 w *= SCREEN_WIDTH / (float)uiInfo.uiDC.glconfig.vidWidth;
 y *= SCREEN_HEIGHT / (float)uiInfo.uiDC.glconfig.vidHeight;
 h *= SCREEN_HEIGHT / (float)uiInfo.uiDC.glconfig.vidHeight;

 trap_CIN_SetExtents(handle, x, y, w, h);
  trap_CIN_DrawCinematic(handle);
}
