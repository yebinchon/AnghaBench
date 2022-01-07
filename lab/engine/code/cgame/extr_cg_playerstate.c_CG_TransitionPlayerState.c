
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ clientNum; scalar_t__ damageEvent; scalar_t__* persistant; scalar_t__ viewheight; scalar_t__ damageCount; int damagePitch; int damageYaw; } ;
typedef TYPE_3__ playerState_t ;
struct TYPE_14__ {scalar_t__ duckChange; int time; int duckTime; TYPE_2__* snap; scalar_t__ mapRestart; int thisFrameTeleport; } ;
struct TYPE_11__ {scalar_t__ pm_type; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;


 int CG_CheckAmmo () ;
 int CG_CheckLocalSounds (TYPE_3__*,TYPE_3__*) ;
 int CG_CheckPlayerstateEvents (TYPE_3__*,TYPE_3__*) ;
 int CG_DamageFeedback (int ,int ,scalar_t__) ;
 int CG_Respawn () ;
 size_t PERS_SPAWN_COUNT ;
 size_t PERS_TEAM ;
 scalar_t__ PM_INTERMISSION ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_4__ cg ;
 scalar_t__ qfalse ;
 int qtrue ;

void CG_TransitionPlayerState( playerState_t *ps, playerState_t *ops ) {

 if ( ps->clientNum != ops->clientNum ) {
  cg.thisFrameTeleport = qtrue;

  *ops = *ps;
 }


 if ( ps->damageEvent != ops->damageEvent && ps->damageCount ) {
  CG_DamageFeedback( ps->damageYaw, ps->damagePitch, ps->damageCount );
 }


 if ( ps->persistant[PERS_SPAWN_COUNT] != ops->persistant[PERS_SPAWN_COUNT] ) {
  CG_Respawn();
 }

 if ( cg.mapRestart ) {
  CG_Respawn();
  cg.mapRestart = qfalse;
 }

 if ( cg.snap->ps.pm_type != PM_INTERMISSION
  && ps->persistant[PERS_TEAM] != TEAM_SPECTATOR ) {
  CG_CheckLocalSounds( ps, ops );
 }


 CG_CheckAmmo();


 CG_CheckPlayerstateEvents( ps, ops );


 if ( ps->viewheight != ops->viewheight ) {
  cg.duckChange = ps->viewheight - ops->viewheight;
  cg.duckTime = cg.time;
 }
}
