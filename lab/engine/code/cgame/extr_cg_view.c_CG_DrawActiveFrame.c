
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
typedef scalar_t__ qboolean ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ value; } ;
struct TYPE_20__ {scalar_t__ value; } ;
struct TYPE_19__ {float value; } ;
struct TYPE_18__ {int scores1; int scores2; } ;
struct TYPE_17__ {int time; int viewaxis; int vieworg; int areamask; } ;
struct TYPE_15__ {scalar_t__* stats; int* persistant; int clientNum; } ;
struct TYPE_16__ {int snapFlags; TYPE_2__ ps; int areamask; } ;
struct TYPE_14__ {scalar_t__ hModel; } ;
struct TYPE_13__ {int time; scalar_t__* infoScreenText; int renderingThirdPerson; scalar_t__ frametime; scalar_t__ oldTime; int clientFrame; TYPE_4__ refdef; TYPE_3__* snap; TYPE_1__ testModelEntity; int predictedPlayerState; int hyperspace; int zoomSensitivity; int weaponSelect; scalar_t__ demoPlayback; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int BG_UpdateItems () ;
 int CG_AddLagometerFrameInfo () ;
 int CG_AddLocalEntities () ;
 int CG_AddMarks () ;
 int CG_AddPacketEntities () ;
 int CG_AddParticles () ;
 int CG_AddTestModel () ;
 int CG_AddViewWeapon (int *) ;
 int CG_CalcViewValues () ;
 int CG_DamageBlendBlob () ;
 int CG_DrawActive (scalar_t__) ;
 int CG_DrawInformation () ;
 int CG_PlayBufferedSounds () ;
 int CG_PlayBufferedVoiceChats () ;
 int CG_PowerupTimerSounds () ;
 int CG_PredictPlayerState () ;
 int CG_Printf (char*,int ) ;
 int CG_ProcessSnapshots () ;
 int CG_UpdateCvars () ;
 size_t PERS_TEAM ;
 int SNAPFLAG_NOT_ACTIVE ;
 size_t STAT_HEALTH ;
 scalar_t__ STEREO_RIGHT ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;
 TYPE_11__ cg ;
 TYPE_10__ cg_stats ;
 TYPE_9__ cg_thirdPerson ;
 TYPE_8__ cg_timescale ;
 TYPE_7__ cg_timescaleFadeEnd ;
 TYPE_6__ cg_timescaleFadeSpeed ;
 TYPE_5__ cgs ;
 int dmlab_player_state (int *,int ,int,int) ;
 int memcpy (int ,int ,int) ;
 int qfalse ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_R_ClearScene () ;
 int trap_S_ClearLoopingSounds (int ) ;
 int trap_S_Respatialize (int ,int ,int ,int) ;
 int trap_SetUserCmdValue (int ,int ) ;
 int va (char*,scalar_t__) ;

void CG_DrawActiveFrame( int serverTime, stereoFrame_t stereoView, qboolean demoPlayback, qboolean skipRendering ) {
 int inwater;
 int team = -1;
 int score1 = 0, score2 = 0;

 cg.time = serverTime;
 cg.demoPlayback = demoPlayback;


 CG_UpdateCvars();

 BG_UpdateItems();



 if ( cg.infoScreenText[0] != 0 ) {
  if ( !skipRendering ) {
   CG_DrawInformation();
  }
  return;
 }



 trap_S_ClearLoopingSounds(qfalse);


 trap_R_ClearScene();


 CG_ProcessSnapshots();



 if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
  if ( !skipRendering ) {
   CG_DrawInformation();
  }
  return;
 }


 trap_SetUserCmdValue( cg.weaponSelect, cg.zoomSensitivity );


 cg.clientFrame++;


 CG_PredictPlayerState();


 cg.renderingThirdPerson = team != TEAM_SPECTATOR
       && (cg_thirdPerson.integer || (cg.snap->ps.stats[STAT_HEALTH] <= 0));


 inwater = CG_CalcViewValues();


 team = cg.snap->ps.persistant[PERS_TEAM];
 if ( team == TEAM_RED ) {
  score1 = cgs.scores1;
  score2 = cgs.scores2;
 } else if ( team == TEAM_BLUE ) {
  score2 = cgs.scores1;
  score1 = cgs.scores2;
 }
 dmlab_player_state( &cg.predictedPlayerState, cg.refdef.vieworg, score1, score2 );

 if ( skipRendering ) return;


 if ( !cg.renderingThirdPerson ) {
  CG_DamageBlendBlob();
 }


 if ( !cg.hyperspace ) {
  CG_AddPacketEntities();
  CG_AddMarks();
  CG_AddParticles ();
  CG_AddLocalEntities();
 }
 CG_AddViewWeapon( &cg.predictedPlayerState );


 CG_PlayBufferedSounds();







 if ( cg.testModelEntity.hModel ) {
  CG_AddTestModel();
 }
 cg.refdef.time = cg.time;
 memcpy( cg.refdef.areamask, cg.snap->areamask, sizeof( cg.refdef.areamask ) );


 CG_PowerupTimerSounds();


 trap_S_Respatialize( cg.snap->ps.clientNum, cg.refdef.vieworg, cg.refdef.viewaxis, inwater );


 if ( stereoView != STEREO_RIGHT ) {
  cg.frametime = cg.time - cg.oldTime;
  if ( cg.frametime < 0 ) {
   cg.frametime = 0;
  }
  cg.oldTime = cg.time;
  CG_AddLagometerFrameInfo();
 }
 if (cg_timescale.value != cg_timescaleFadeEnd.value) {
  if (cg_timescale.value < cg_timescaleFadeEnd.value) {
   cg_timescale.value += cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
   if (cg_timescale.value > cg_timescaleFadeEnd.value)
    cg_timescale.value = cg_timescaleFadeEnd.value;
  }
  else {
   cg_timescale.value -= cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
   if (cg_timescale.value < cg_timescaleFadeEnd.value)
    cg_timescale.value = cg_timescaleFadeEnd.value;
  }
  if (cg_timescaleFadeSpeed.value) {
   trap_Cvar_Set("timescale", va("%f", cg_timescale.value));
  }
 }


 CG_DrawActive( stereoView );

 if ( cg_stats.integer ) {
  CG_Printf( "cg.clientFrame:%i\n", cg.clientFrame );
 }
}
