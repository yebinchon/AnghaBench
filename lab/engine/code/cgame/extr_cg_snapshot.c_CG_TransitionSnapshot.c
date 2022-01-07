
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {size_t clientNum; int eFlags; int pm_flags; } ;
struct TYPE_14__ {int numEntities; TYPE_3__ ps; int serverTime; TYPE_1__* entities; int serverCommandSequence; } ;
typedef TYPE_2__ snapshot_t ;
typedef TYPE_3__ playerState_t ;
struct TYPE_16__ {int snapShotTime; void* interpolate; int currentState; void* currentValid; } ;
typedef TYPE_4__ centity_t ;
struct TYPE_19__ {TYPE_2__* snap; scalar_t__ demoPlayback; int thisFrameTeleport; TYPE_2__* nextSnap; scalar_t__ mapRestart; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_13__ {size_t number; } ;


 int BG_PlayerStateToEntityState (TYPE_3__*,int *,void*) ;
 int CG_Error (char*) ;
 int CG_ExecuteNewServerCommands (int ) ;
 int CG_TransitionEntity (TYPE_4__*) ;
 int CG_TransitionPlayerState (TYPE_3__*,TYPE_3__*) ;
 int EF_TELEPORT_BIT ;
 int PMF_FOLLOW ;
 TYPE_8__ cg ;
 TYPE_4__* cg_entities ;
 TYPE_6__ cg_nopredict ;
 TYPE_5__ cg_synchronousClients ;
 void* qfalse ;
 int qtrue ;

__attribute__((used)) static void CG_TransitionSnapshot( void ) {
 centity_t *cent;
 snapshot_t *oldFrame;
 int i;

 if ( !cg.snap ) {
  CG_Error( "CG_TransitionSnapshot: NULL cg.snap" );
 }
 if ( !cg.nextSnap ) {
  CG_Error( "CG_TransitionSnapshot: NULL cg.nextSnap" );
 }


 CG_ExecuteNewServerCommands( cg.nextSnap->serverCommandSequence );


 if ( cg.mapRestart ) {
 }


 for ( i = 0 ; i < cg.snap->numEntities ; i++ ) {
  cent = &cg_entities[ cg.snap->entities[ i ].number ];
  cent->currentValid = qfalse;
 }


 oldFrame = cg.snap;
 cg.snap = cg.nextSnap;

 BG_PlayerStateToEntityState( &cg.snap->ps, &cg_entities[ cg.snap->ps.clientNum ].currentState, qfalse );
 cg_entities[ cg.snap->ps.clientNum ].interpolate = qfalse;

 for ( i = 0 ; i < cg.snap->numEntities ; i++ ) {
  cent = &cg_entities[ cg.snap->entities[ i ].number ];
  CG_TransitionEntity( cent );


  cent->snapShotTime = cg.snap->serverTime;
 }

 cg.nextSnap = ((void*)0);


 if ( oldFrame ) {
  playerState_t *ops, *ps;

  ops = &oldFrame->ps;
  ps = &cg.snap->ps;

  if ( ( ps->eFlags ^ ops->eFlags ) & EF_TELEPORT_BIT ) {
   cg.thisFrameTeleport = qtrue;
  }



  if ( cg.demoPlayback || (cg.snap->ps.pm_flags & PMF_FOLLOW)
   || cg_nopredict.integer || cg_synchronousClients.integer ) {
   CG_TransitionPlayerState( ps, ops );
  }
 }

}
