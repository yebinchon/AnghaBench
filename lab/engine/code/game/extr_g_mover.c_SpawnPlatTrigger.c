
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_6__ {double* mins; double* maxs; int contents; } ;
struct TYPE_7__ {char* classname; scalar_t__* pos1; TYPE_1__ r; struct TYPE_7__* parent; int touch; } ;
typedef TYPE_2__ gentity_t ;


 int CONTENTS_TRIGGER ;
 TYPE_2__* G_Spawn () ;
 int Touch_PlatCenterTrigger ;
 int VectorCopy (scalar_t__*,double*) ;
 int trap_LinkEntity (TYPE_2__*) ;

void SpawnPlatTrigger( gentity_t *ent ) {
 gentity_t *trigger;
 vec3_t tmin, tmax;



 trigger = G_Spawn();
 trigger->classname = "plat_trigger";
 trigger->touch = Touch_PlatCenterTrigger;
 trigger->r.contents = CONTENTS_TRIGGER;
 trigger->parent = ent;

 tmin[0] = ent->pos1[0] + ent->r.mins[0] + 33;
 tmin[1] = ent->pos1[1] + ent->r.mins[1] + 33;
 tmin[2] = ent->pos1[2] + ent->r.mins[2];

 tmax[0] = ent->pos1[0] + ent->r.maxs[0] - 33;
 tmax[1] = ent->pos1[1] + ent->r.maxs[1] - 33;
 tmax[2] = ent->pos1[2] + ent->r.maxs[2] + 8;

 if ( tmax[0] <= tmin[0] ) {
  tmin[0] = ent->pos1[0] + (ent->r.mins[0] + ent->r.maxs[0]) *0.5;
  tmax[0] = tmin[0] + 1;
 }
 if ( tmax[1] <= tmin[1] ) {
  tmin[1] = ent->pos1[1] + (ent->r.mins[1] + ent->r.maxs[1]) *0.5;
  tmax[1] = tmin[1] + 1;
 }

 VectorCopy (tmin, trigger->r.mins);
 VectorCopy (tmax, trigger->r.maxs);

 trap_LinkEntity (trigger);
}
