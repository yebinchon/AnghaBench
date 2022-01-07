
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int angles; int origin; int eType; } ;
struct TYPE_8__ {int damage; int spawnflags; int think; int use; int movedir; TYPE_1__ s; struct TYPE_8__* enemy; scalar_t__ target; int classname; } ;
typedef TYPE_2__ gentity_t ;


 int ET_BEAM ;
 int FOFS (int ) ;
 TYPE_2__* G_Find (int *,int ,scalar_t__) ;
 int G_Printf (char*,int ,int ,scalar_t__) ;
 int G_SetMovedir (int ,int ) ;
 int target_laser_off (TYPE_2__*) ;
 int target_laser_on (TYPE_2__*) ;
 int target_laser_think ;
 int target_laser_use ;
 int targetname ;
 int vtos (int ) ;

void target_laser_start (gentity_t *self)
{
 gentity_t *ent;

 self->s.eType = ET_BEAM;

 if (self->target) {
  ent = G_Find (((void*)0), FOFS(targetname), self->target);
  if (!ent) {
   G_Printf ("%s at %s: %s is a bad target\n", self->classname, vtos(self->s.origin), self->target);
  }
  self->enemy = ent;
 } else {
  G_SetMovedir (self->s.angles, self->movedir);
 }

 self->use = target_laser_use;
 self->think = target_laser_think;

 if ( !self->damage ) {
  self->damage = 1;
 }

 if (self->spawnflags & 1)
  target_laser_on (self);
 else
  target_laser_off (self);
}
