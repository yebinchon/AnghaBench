
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ stereoFrame_t ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {scalar_t__ orderTime; scalar_t__ gametype; scalar_t__ orderPending; } ;
struct TYPE_14__ {scalar_t__ pm_type; scalar_t__* persistant; scalar_t__* stats; } ;
struct TYPE_15__ {TYPE_1__ ps; } ;
struct TYPE_13__ {scalar_t__ time; int scoreBoardShowing; TYPE_2__* snap; int showScores; scalar_t__ levelShot; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int CG_CheckOrderPending () ;
 int CG_DrawAmmoWarning () ;
 int CG_DrawCenterString () ;
 int CG_DrawCrosshair () ;
 int CG_DrawCrosshairNames () ;
 int CG_DrawFollow () ;
 int CG_DrawHoldableItem () ;
 int CG_DrawIntermission () ;
 int CG_DrawLagometer () ;
 int CG_DrawLowerLeft () ;
 int CG_DrawLowerRight () ;
 int CG_DrawProxWarning () ;
 int CG_DrawReward () ;
 int CG_DrawScoreboard () ;
 int CG_DrawScriptFilledRectangles () ;
 int CG_DrawScriptMessage () ;
 int CG_DrawSpectator () ;
 int CG_DrawStatusBar () ;
 int CG_DrawStatusBarReduced () ;
 int CG_DrawTeamInfo () ;
 int CG_DrawTeamVote () ;
 int CG_DrawTimedMenus () ;
 int CG_DrawUpperRight (scalar_t__) ;
 int CG_DrawVote () ;
 int CG_DrawWarmup () ;
 int CG_DrawWeaponSelect () ;
 scalar_t__ GT_TEAM ;
 int Menu_PaintAll () ;
 size_t PERS_TEAM ;
 scalar_t__ PM_INTERMISSION ;
 size_t STAT_HEALTH ;
 scalar_t__ STEREO_CENTER ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_11__ cg ;
 TYPE_10__ cg_draw2D ;
 TYPE_9__ cg_drawCrosshairAlways ;
 TYPE_8__ cg_drawReducedUI ;
 TYPE_7__ cg_drawScriptRectanglesAlways ;
 TYPE_6__ cg_drawScriptTextAlways ;
 TYPE_5__ cg_drawStatus ;
 TYPE_4__ cg_paused ;
 TYPE_3__ cgs ;

__attribute__((used)) static void CG_Draw2D(stereoFrame_t stereoFrame)
{






 if ( cg.levelShot ) {
  return;
 }

 if ( cg_draw2D.integer == 0 || cg_drawReducedUI.integer != 0) {
  if (stereoFrame == STEREO_CENTER) {
   if (cg_drawCrosshairAlways.integer != 0) CG_DrawCrosshair();
   if (cg_drawReducedUI.integer != 0) CG_DrawStatusBarReduced();
   if (cg_drawScriptTextAlways.integer !=0) CG_DrawScriptMessage();
   if (cg_drawScriptRectanglesAlways.integer !=0) CG_DrawScriptFilledRectangles();
  }
  return;
 }

 if ( cg.snap->ps.pm_type == PM_INTERMISSION ) {
  CG_DrawIntermission();
  return;
 }






 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR ) {
  CG_DrawSpectator();

  if(stereoFrame == STEREO_CENTER)
   CG_DrawCrosshair();

  CG_DrawCrosshairNames();
 } else {

  if ( !cg.showScores && cg.snap->ps.stats[STAT_HEALTH] > 0 ) {







   CG_DrawStatusBar();


   CG_DrawAmmoWarning();




   if(stereoFrame == STEREO_CENTER)
    CG_DrawCrosshair();
   CG_DrawCrosshairNames();
   CG_DrawWeaponSelect();


   CG_DrawHoldableItem();



   CG_DrawReward();
  }
 }

 if ( cgs.gametype >= GT_TEAM ) {

  CG_DrawTeamInfo();

 }

 CG_DrawScriptMessage();
 CG_DrawScriptFilledRectangles();
 CG_DrawVote();
 CG_DrawTeamVote();

 CG_DrawLagometer();






 CG_DrawUpperRight(stereoFrame);



 CG_DrawLowerRight();
 CG_DrawLowerLeft();


 if ( !CG_DrawFollow() ) {
  CG_DrawWarmup();
 }


 cg.scoreBoardShowing = CG_DrawScoreboard();
 if ( !cg.scoreBoardShowing) {
  CG_DrawCenterString();
 }
}
