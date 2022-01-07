
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ pm_type; } ;
struct TYPE_6__ {scalar_t__ showScores; TYPE_1__ predictedPlayerState; } ;
struct TYPE_5__ {int cursorY; int cursorX; int * capturedItem; } ;


 int CGAME_EVENT_NONE ;
 int CG_EventHandling (int ) ;
 int * Display_CaptureItem (int ,int ) ;
 int Display_HandleKey (int,scalar_t__,int ,int ) ;
 int K_MOUSE2 ;
 scalar_t__ PM_NORMAL ;
 scalar_t__ PM_SPECTATOR ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 scalar_t__ qfalse ;
 int trap_Key_SetCatcher (int ) ;

void CG_KeyEvent(int key, qboolean down) {

 if (!down) {
  return;
 }

 if ( cg.predictedPlayerState.pm_type == PM_NORMAL || (cg.predictedPlayerState.pm_type == PM_SPECTATOR && cg.showScores == qfalse)) {
  CG_EventHandling(CGAME_EVENT_NONE);
    trap_Key_SetCatcher(0);
  return;
 }
  Display_HandleKey(key, down, cgs.cursorX, cgs.cursorY);

 if (cgs.capturedItem) {
  cgs.capturedItem = ((void*)0);
 } else {
  if (key == K_MOUSE2 && down) {
   cgs.capturedItem = Display_CaptureItem(cgs.cursorX, cgs.cursorY);
  }
 }
}
