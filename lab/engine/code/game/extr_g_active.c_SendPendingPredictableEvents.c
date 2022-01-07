
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int entityEventSequence; int eventSequence; int* events; int externalEvent; int clientNum; int origin; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_8__ {int singleClient; int svFlags; } ;
struct TYPE_11__ {int number; int otherEntityNum; int eFlags; scalar_t__ eType; } ;
struct TYPE_10__ {TYPE_1__ r; TYPE_7__ s; } ;
typedef TYPE_3__ gentity_t ;


 int BG_PlayerStateToEntityState (TYPE_2__*,TYPE_7__*,int ) ;
 int EF_PLAYER_EVENT ;
 scalar_t__ ET_EVENTS ;
 TYPE_3__* G_TempEntity (int ,int) ;
 int MAX_PS_EVENTS ;
 int SVF_NOTSINGLECLIENT ;
 int qtrue ;

void SendPendingPredictableEvents( playerState_t *ps ) {
 gentity_t *t;
 int event, seq;
 int extEvent, number;


 if ( ps->entityEventSequence < ps->eventSequence ) {


  seq = ps->entityEventSequence & (MAX_PS_EVENTS-1);
  event = ps->events[ seq ] | ( ( ps->entityEventSequence & 3 ) << 8 );

  extEvent = ps->externalEvent;
  ps->externalEvent = 0;

  t = G_TempEntity( ps->origin, event );
  number = t->s.number;
  BG_PlayerStateToEntityState( ps, &t->s, qtrue );
  t->s.number = number;
  t->s.eType = ET_EVENTS + event;
  t->s.eFlags |= EF_PLAYER_EVENT;
  t->s.otherEntityNum = ps->clientNum;

  t->r.svFlags |= SVF_NOTSINGLECLIENT;
  t->r.singleClient = ps->clientNum;

  ps->externalEvent = extEvent;
 }
}
