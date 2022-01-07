
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int serverTime; int upmove; } ;
struct TYPE_8__ {int pmove_msec; TYPE_2__ cmd; TYPE_1__* ps; scalar_t__ pmove_fixed; } ;
typedef TYPE_3__ pmove_t ;
struct TYPE_6__ {int commandTime; int pmove_framecount; int pm_flags; } ;


 int PMF_JUMP_HELD ;
 int PS_PMOVEFRAMECOUNTBITS ;
 int PmoveSingle (TYPE_3__*) ;

void Pmove (pmove_t *pmove) {
 int finalTime;

 finalTime = pmove->cmd.serverTime;

 if ( finalTime < pmove->ps->commandTime ) {
  return;
 }

 if ( finalTime > pmove->ps->commandTime + 1000 ) {
  pmove->ps->commandTime = finalTime - 1000;
 }

 pmove->ps->pmove_framecount = (pmove->ps->pmove_framecount+1) & ((1<<PS_PMOVEFRAMECOUNTBITS)-1);



 while ( pmove->ps->commandTime != finalTime ) {
  int msec;

  msec = finalTime - pmove->ps->commandTime;

  if ( pmove->pmove_fixed ) {
   if ( msec > pmove->pmove_msec ) {
    msec = pmove->pmove_msec;
   }
  }
  else {
   if ( msec > 66 ) {
    msec = 66;
   }
  }
  pmove->cmd.serverTime = pmove->ps->commandTime + msec;
  PmoveSingle( pmove );

  if ( pmove->ps->pm_flags & PMF_JUMP_HELD ) {
   pmove->cmd.upmove = 20;
  }
 }



}
