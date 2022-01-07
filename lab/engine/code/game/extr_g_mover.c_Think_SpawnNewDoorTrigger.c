
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_8__ {scalar_t__* absmin; scalar_t__* absmax; scalar_t__* mins; scalar_t__* maxs; int contents; } ;
struct TYPE_9__ {char* classname; int count; int moverState; int touch; TYPE_1__ r; struct TYPE_9__* parent; struct TYPE_9__* teamchain; int takedamage; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_10__ {int time; } ;


 int AddPointToBounds (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int CONTENTS_TRIGGER ;
 TYPE_2__* G_Spawn () ;
 int MatchTeam (TYPE_2__*,int ,int ) ;
 int Touch_DoorTrigger ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 TYPE_4__ level ;
 int qtrue ;
 int trap_LinkEntity (TYPE_2__*) ;

void Think_SpawnNewDoorTrigger( gentity_t *ent ) {
 gentity_t *other;
 vec3_t mins, maxs;
 int i, best;

 if (!ent) {
  return;
 }


 for ( other = ent ; other ; other = other->teamchain ) {
  other->takedamage = qtrue;
 }


 VectorCopy (ent->r.absmin, mins);
 VectorCopy (ent->r.absmax, maxs);

 for (other = ent->teamchain ; other ; other=other->teamchain) {
  AddPointToBounds (other->r.absmin, mins, maxs);
  AddPointToBounds (other->r.absmax, mins, maxs);
 }


 best = 0;
 for ( i = 1 ; i < 3 ; i++ ) {
  if ( maxs[i] - mins[i] < maxs[best] - mins[best] ) {
   best = i;
  }
 }
 maxs[best] += 120;
 mins[best] -= 120;


 other = G_Spawn ();
 other->classname = "door_trigger";
 VectorCopy (mins, other->r.mins);
 VectorCopy (maxs, other->r.maxs);
 other->parent = ent;
 other->r.contents = CONTENTS_TRIGGER;
 other->touch = Touch_DoorTrigger;

 other->count = best;
 trap_LinkEntity (other);

 MatchTeam( ent, ent->moverState, level.time );
}
