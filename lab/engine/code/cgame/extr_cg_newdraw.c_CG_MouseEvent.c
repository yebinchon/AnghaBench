
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pm_type; } ;
struct TYPE_8__ {scalar_t__ showScores; TYPE_1__ predictedPlayerState; } ;
struct TYPE_6__ {scalar_t__ sizeCursor; scalar_t__ selectCursor; } ;
struct TYPE_7__ {int cursorX; int cursorY; int * capturedItem; TYPE_2__ media; scalar_t__ activeCursor; } ;


 int CURSOR_ARROW ;
 int CURSOR_SIZER ;
 int Display_CursorType (int,int) ;
 int Display_MouseMove (int *,int,int) ;
 scalar_t__ PM_NORMAL ;
 scalar_t__ PM_SPECTATOR ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 scalar_t__ qfalse ;
 int trap_Key_SetCatcher (int ) ;

void CG_MouseEvent(int x, int y) {
 int n;

 if ( (cg.predictedPlayerState.pm_type == PM_NORMAL || cg.predictedPlayerState.pm_type == PM_SPECTATOR) && cg.showScores == qfalse) {
    trap_Key_SetCatcher(0);
  return;
 }

 cgs.cursorX+= x;
 if (cgs.cursorX < 0)
  cgs.cursorX = 0;
 else if (cgs.cursorX > 640)
  cgs.cursorX = 640;

 cgs.cursorY += y;
 if (cgs.cursorY < 0)
  cgs.cursorY = 0;
 else if (cgs.cursorY > 480)
  cgs.cursorY = 480;

 n = Display_CursorType(cgs.cursorX, cgs.cursorY);
 cgs.activeCursor = 0;
 if (n == CURSOR_ARROW) {
  cgs.activeCursor = cgs.media.selectCursor;
 } else if (n == CURSOR_SIZER) {
  cgs.activeCursor = cgs.media.sizeCursor;
 }

  if (cgs.capturedItem) {
   Display_MouseMove(cgs.capturedItem, x, y);
  } else {
   Display_MouseMove(((void*)0), cgs.cursorX, cgs.cursorY);
  }

}
