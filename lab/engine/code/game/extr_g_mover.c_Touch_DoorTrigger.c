
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_13__ {TYPE_4__* parent; TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_14__ {scalar_t__ moverState; } ;
struct TYPE_11__ {scalar_t__ sessionTeam; } ;
struct TYPE_12__ {TYPE_1__ sess; } ;


 scalar_t__ MOVER_1TO2 ;
 scalar_t__ MOVER_POS2 ;
 scalar_t__ TEAM_SPECTATOR ;
 int Touch_DoorTriggerSpectator (TYPE_3__*,TYPE_3__*,int *) ;
 int Use_BinaryMover (TYPE_4__*,TYPE_3__*,TYPE_3__*) ;

void Touch_DoorTrigger( gentity_t *ent, gentity_t *other, trace_t *trace ) {
 if ( other->client && other->client->sess.sessionTeam == TEAM_SPECTATOR ) {

  if ( ent->parent->moverState != MOVER_1TO2 &&
   ent->parent->moverState != MOVER_POS2) {
   Touch_DoorTriggerSpectator( ent, other, trace );
  }
 }
 else if ( ent->parent->moverState != MOVER_1TO2 ) {
  Use_BinaryMover( ent->parent, ent, other );
 }
}
