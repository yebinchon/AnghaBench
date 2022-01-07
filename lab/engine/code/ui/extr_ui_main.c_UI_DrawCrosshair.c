
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_8__ {scalar_t__ h; int w; scalar_t__ y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_6__ {int * crosshairShader; } ;
struct TYPE_7__ {TYPE_1__ Assets; } ;
struct TYPE_9__ {size_t currentCrosshair; TYPE_2__ uiDC; } ;


 int UI_DrawHandlePic (int ,scalar_t__,int ,scalar_t__,int ) ;
 int trap_R_SetColor (int *) ;
 TYPE_4__ uiInfo ;

__attribute__((used)) static void UI_DrawCrosshair(rectDef_t *rect, float scale, vec4_t color) {
 if (!uiInfo.currentCrosshair) {
  return;
 }
 trap_R_SetColor( color );
 UI_DrawHandlePic( rect->x, rect->y - rect->h, rect->w, rect->h, uiInfo.uiDC.Assets.crosshairShader[uiInfo.currentCrosshair]);
  trap_R_SetColor( ((void*)0) );
}
