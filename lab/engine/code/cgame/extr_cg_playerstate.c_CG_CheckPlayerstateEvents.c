
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ externalEvent; size_t clientNum; int eventSequence; int* events; int * eventParms; int externalEventParm; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_9__ {scalar_t__ event; int eventParm; } ;
struct TYPE_11__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_12__ {int* predictableEvents; int eventSequence; TYPE_3__ predictedPlayerEntity; } ;


 int CG_EntityEvent (TYPE_3__*,int ) ;
 int MAX_PREDICTED_EVENTS ;
 int MAX_PS_EVENTS ;
 TYPE_5__ cg ;
 TYPE_3__* cg_entities ;

void CG_CheckPlayerstateEvents( playerState_t *ps, playerState_t *ops ) {
 int i;
 int event;
 centity_t *cent;

 if ( ps->externalEvent && ps->externalEvent != ops->externalEvent ) {
  cent = &cg_entities[ ps->clientNum ];
  cent->currentState.event = ps->externalEvent;
  cent->currentState.eventParm = ps->externalEventParm;
  CG_EntityEvent( cent, cent->lerpOrigin );
 }

 cent = &cg.predictedPlayerEntity;

 for ( i = ps->eventSequence - MAX_PS_EVENTS ; i < ps->eventSequence ; i++ ) {

  if ( i >= ops->eventSequence


   || (i > ops->eventSequence - MAX_PS_EVENTS && ps->events[i & (MAX_PS_EVENTS-1)] != ops->events[i & (MAX_PS_EVENTS-1)]) ) {

   event = ps->events[ i & (MAX_PS_EVENTS-1) ];
   cent->currentState.event = event;
   cent->currentState.eventParm = ps->eventParms[ i & (MAX_PS_EVENTS-1) ];
   CG_EntityEvent( cent, cent->lerpOrigin );

   cg.predictableEvents[ i & (MAX_PREDICTED_EVENTS-1) ] = event;

   cg.eventSequence++;
  }
 }
}
