
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int scoreBoardShowing; int time; int scoreFadeTime; } ;
struct TYPE_3__ {scalar_t__ gametype; } ;


 int CG_DrawCenterString () ;
 int CG_DrawScoreboard () ;
 scalar_t__ GT_SINGLE_PLAYER ;
 TYPE_2__ cg ;
 TYPE_1__ cgs ;

__attribute__((used)) static void CG_DrawIntermission( void ) {







 if ( cgs.gametype == GT_SINGLE_PLAYER ) {
  CG_DrawCenterString();
  return;
 }

 cg.scoreFadeTime = cg.time;
 cg.scoreBoardShowing = CG_DrawScoreboard();
}
