
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {int x; int w; scalar_t__ h; scalar_t__ y; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_5__ {size_t spectatorLen; int spectatorWidth; int spectatorPaintX; int spectatorPaintX2; size_t spectatorOffset; scalar_t__ time; scalar_t__ spectatorTime; int * spectatorList; } ;


 int CG_Text_Paint_Limit (float*,int,scalar_t__,float,int ,int *,int ,size_t) ;
 int CG_Text_Width (int *,float,int) ;
 TYPE_2__ cg ;

void CG_DrawTeamSpectators(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader) {
 if (cg.spectatorLen) {
  float maxX;

  if (cg.spectatorWidth == -1) {
   cg.spectatorWidth = 0;
   cg.spectatorPaintX = rect->x + 1;
   cg.spectatorPaintX2 = -1;
  }

  if (cg.spectatorOffset > cg.spectatorLen) {
   cg.spectatorOffset = 0;
   cg.spectatorPaintX = rect->x + 1;
   cg.spectatorPaintX2 = -1;
  }

  if (cg.time > cg.spectatorTime) {
   cg.spectatorTime = cg.time + 10;
   if (cg.spectatorPaintX <= rect->x + 2) {
    if (cg.spectatorOffset < cg.spectatorLen) {
     cg.spectatorPaintX += CG_Text_Width(&cg.spectatorList[cg.spectatorOffset], scale, 1) - 1;
     cg.spectatorOffset++;
    } else {
     cg.spectatorOffset = 0;
     if (cg.spectatorPaintX2 >= 0) {
      cg.spectatorPaintX = cg.spectatorPaintX2;
     } else {
      cg.spectatorPaintX = rect->x + rect->w - 2;
     }
     cg.spectatorPaintX2 = -1;
    }
   } else {
    cg.spectatorPaintX--;
    if (cg.spectatorPaintX2 >= 0) {
     cg.spectatorPaintX2--;
    }
   }
  }

  maxX = rect->x + rect->w - 2;
  CG_Text_Paint_Limit(&maxX, cg.spectatorPaintX, rect->y + rect->h - 3, scale, color, &cg.spectatorList[cg.spectatorOffset], 0, 0);
  if (cg.spectatorPaintX2 >= 0) {
   float maxX2 = rect->x + rect->w - 2;
   CG_Text_Paint_Limit(&maxX2, cg.spectatorPaintX2, rect->y + rect->h - 3, scale, color, cg.spectatorList, 0, cg.spectatorOffset);
  }
  if (cg.spectatorOffset && maxX > 0) {

   if (cg.spectatorPaintX2 == -1) {
      cg.spectatorPaintX2 = rect->x + rect->w - 2;
   }
  } else {
   cg.spectatorPaintX2 = -1;
  }

 }
}
