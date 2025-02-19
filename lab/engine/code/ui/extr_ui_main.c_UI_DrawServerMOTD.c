
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_8__ {int x; int w; scalar_t__ h; scalar_t__ y; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_7__ {size_t motdLen; int motdWidth; int motdPaintX; int motdPaintX2; size_t motdOffset; scalar_t__ motdTime; int * motd; } ;
struct TYPE_6__ {scalar_t__ realTime; } ;
struct TYPE_9__ {TYPE_2__ serverStatus; TYPE_1__ uiDC; } ;


 int Text_Paint_Limit (float*,int,scalar_t__,float,int ,int *,int ,size_t) ;
 int Text_Width (int *,float,int) ;
 TYPE_4__ uiInfo ;

__attribute__((used)) static void UI_DrawServerMOTD(rectDef_t *rect, float scale, vec4_t color) {
 if (uiInfo.serverStatus.motdLen) {
  float maxX;

  if (uiInfo.serverStatus.motdWidth == -1) {
   uiInfo.serverStatus.motdWidth = 0;
   uiInfo.serverStatus.motdPaintX = rect->x + 1;
   uiInfo.serverStatus.motdPaintX2 = -1;
  }

  if (uiInfo.serverStatus.motdOffset > uiInfo.serverStatus.motdLen) {
   uiInfo.serverStatus.motdOffset = 0;
   uiInfo.serverStatus.motdPaintX = rect->x + 1;
   uiInfo.serverStatus.motdPaintX2 = -1;
  }

  if (uiInfo.uiDC.realTime > uiInfo.serverStatus.motdTime) {
   uiInfo.serverStatus.motdTime = uiInfo.uiDC.realTime + 10;
   if (uiInfo.serverStatus.motdPaintX <= rect->x + 2) {
    if (uiInfo.serverStatus.motdOffset < uiInfo.serverStatus.motdLen) {
     uiInfo.serverStatus.motdPaintX += Text_Width(&uiInfo.serverStatus.motd[uiInfo.serverStatus.motdOffset], scale, 1) - 1;
     uiInfo.serverStatus.motdOffset++;
    } else {
     uiInfo.serverStatus.motdOffset = 0;
     if (uiInfo.serverStatus.motdPaintX2 >= 0) {
      uiInfo.serverStatus.motdPaintX = uiInfo.serverStatus.motdPaintX2;
     } else {
      uiInfo.serverStatus.motdPaintX = rect->x + rect->w - 2;
     }
     uiInfo.serverStatus.motdPaintX2 = -1;
    }
   } else {

    uiInfo.serverStatus.motdPaintX -= 2;
    if (uiInfo.serverStatus.motdPaintX2 >= 0) {

     uiInfo.serverStatus.motdPaintX2 -= 2;
    }
   }
  }

  maxX = rect->x + rect->w - 2;
  Text_Paint_Limit(&maxX, uiInfo.serverStatus.motdPaintX, rect->y + rect->h - 3, scale, color, &uiInfo.serverStatus.motd[uiInfo.serverStatus.motdOffset], 0, 0);
  if (uiInfo.serverStatus.motdPaintX2 >= 0) {
   float maxX2 = rect->x + rect->w - 2;
   Text_Paint_Limit(&maxX2, uiInfo.serverStatus.motdPaintX2, rect->y + rect->h - 3, scale, color, uiInfo.serverStatus.motd, 0, uiInfo.serverStatus.motdOffset);
  }
  if (uiInfo.serverStatus.motdOffset && maxX > 0) {

   if (uiInfo.serverStatus.motdPaintX2 == -1) {
      uiInfo.serverStatus.motdPaintX2 = rect->x + rect->w - 2;
   }
  } else {
   uiInfo.serverStatus.motdPaintX2 = -1;
  }

 }
}
