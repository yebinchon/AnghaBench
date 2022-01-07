
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int absmin; } ;
struct TYPE_10__ {int angles; } ;
struct TYPE_11__ {int spawnflags; int damage; int speed; int think; scalar_t__ nextthink; int reached; int model; TYPE_1__ r; int target; TYPE_2__ s; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;


 scalar_t__ FRAMETIME ;
 int G_FreeEntity (TYPE_3__*) ;
 int G_Printf (char*,int ) ;
 int InitMover (TYPE_3__*) ;
 int Reached_Train ;
 int TRAIN_BLOCK_STOPS ;
 int Think_SetupTrainTargets ;
 int VectorClear (int ) ;
 TYPE_5__ level ;
 int trap_SetBrushModel (TYPE_3__*,int ) ;
 int vtos (int ) ;

void SP_func_train (gentity_t *self) {
 VectorClear (self->s.angles);

 if (self->spawnflags & TRAIN_BLOCK_STOPS) {
  self->damage = 0;
 } else {
  if (!self->damage) {
   self->damage = 2;
  }
 }

 if ( !self->speed ) {
  self->speed = 100;
 }

 if ( !self->target ) {
  G_Printf ("func_train without a target at %s\n", vtos(self->r.absmin));
  G_FreeEntity( self );
  return;
 }

 trap_SetBrushModel( self, self->model );
 InitMover( self );

 self->reached = Reached_Train;



 self->nextthink = level.time + FRAMETIME;
 self->think = Think_SetupTrainTargets;
}
