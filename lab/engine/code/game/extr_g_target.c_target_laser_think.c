
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_17__ {int entityNum; int endpos; } ;
typedef TYPE_5__ trace_t ;
struct TYPE_16__ {int origin2; int number; int origin; } ;
struct TYPE_18__ {scalar_t__ nextthink; TYPE_4__ s; int damage; int movedir; int activator; TYPE_3__* enemy; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_14__ {int maxs; int mins; } ;
struct TYPE_13__ {int origin; } ;
struct TYPE_15__ {TYPE_2__ r; TYPE_1__ s; } ;
struct TYPE_12__ {scalar_t__ time; } ;


 int CONTENTS_BODY ;
 int CONTENTS_CORPSE ;
 int CONTENTS_SOLID ;
 int DAMAGE_NO_KNOCKBACK ;
 scalar_t__ FRAMETIME ;
 int G_Damage (int *,TYPE_6__*,int ,int ,int ,int ,int ,int ) ;
 int MOD_TARGET_LASER ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int * g_entities ;
 TYPE_10__ level ;
 int trap_LinkEntity (TYPE_6__*) ;
 int trap_Trace (TYPE_5__*,int ,int *,int *,int ,int ,int) ;

void target_laser_think (gentity_t *self) {
 vec3_t end;
 trace_t tr;
 vec3_t point;


 if ( self->enemy ) {
  VectorMA (self->enemy->s.origin, 0.5, self->enemy->r.mins, point);
  VectorMA (point, 0.5, self->enemy->r.maxs, point);
  VectorSubtract (point, self->s.origin, self->movedir);
  VectorNormalize (self->movedir);
 }


 VectorMA (self->s.origin, 2048, self->movedir, end);

 trap_Trace( &tr, self->s.origin, ((void*)0), ((void*)0), end, self->s.number, CONTENTS_SOLID|CONTENTS_BODY|CONTENTS_CORPSE);

 if ( tr.entityNum ) {

  G_Damage ( &g_entities[tr.entityNum], self, self->activator, self->movedir,
   tr.endpos, self->damage, DAMAGE_NO_KNOCKBACK, MOD_TARGET_LASER);
 }

 VectorCopy (tr.endpos, self->s.origin2);

 trap_LinkEntity( self );
 self->nextthink = level.time + FRAMETIME;
}
