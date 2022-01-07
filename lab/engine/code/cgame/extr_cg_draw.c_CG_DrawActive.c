
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ stereoFrame_t ;
struct TYPE_6__ {int refdef; TYPE_2__* snap; } ;
struct TYPE_4__ {scalar_t__* persistant; int pm_flags; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 int CG_Draw2D (scalar_t__) ;
 int CG_DrawCrosshair3D () ;
 int CG_DrawInformation () ;
 int CG_DrawTourneyScoreboard () ;
 int CG_TileClear () ;
 size_t PERS_TEAM ;
 int PMF_SCOREBOARD ;
 scalar_t__ STEREO_CENTER ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_3__ cg ;
 int trap_R_RenderScene (int *) ;

void CG_DrawActive( stereoFrame_t stereoView ) {

 if ( !cg.snap ) {
  CG_DrawInformation();
  return;
 }


 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR &&
  ( cg.snap->ps.pm_flags & PMF_SCOREBOARD ) ) {
  CG_DrawTourneyScoreboard();
  return;
 }


 CG_TileClear();

 if(stereoView != STEREO_CENTER)
  CG_DrawCrosshair3D();


 trap_R_RenderScene( &cg.refdef );


  CG_Draw2D(stereoView);
}
