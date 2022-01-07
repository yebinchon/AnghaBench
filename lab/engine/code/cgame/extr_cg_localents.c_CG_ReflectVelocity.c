
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {scalar_t__* normal; } ;
struct TYPE_9__ {int fraction; TYPE_1__ plane; scalar_t__ allsolid; int endpos; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_12__ {int* trDelta; int trTime; int trType; int trBase; } ;
struct TYPE_10__ {TYPE_7__ pos; int bounceFactor; } ;
typedef TYPE_3__ localEntity_t ;
struct TYPE_11__ {int time; int frametime; } ;


 int BG_EvaluateTrajectoryDelta (TYPE_7__*,int,int ) ;
 float DotProduct (int ,scalar_t__*) ;
 int TR_STATIONARY ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,scalar_t__*,int*) ;
 int VectorScale (int*,int ,int*) ;
 TYPE_4__ cg ;

void CG_ReflectVelocity( localEntity_t *le, trace_t *trace ) {
 vec3_t velocity;
 float dot;
 int hitTime;


 hitTime = cg.time - cg.frametime + cg.frametime * trace->fraction;
 BG_EvaluateTrajectoryDelta( &le->pos, hitTime, velocity );
 dot = DotProduct( velocity, trace->plane.normal );
 VectorMA( velocity, -2*dot, trace->plane.normal, le->pos.trDelta );

 VectorScale( le->pos.trDelta, le->bounceFactor, le->pos.trDelta );

 VectorCopy( trace->endpos, le->pos.trBase );
 le->pos.trTime = cg.time;



 if ( trace->allsolid ||
  ( trace->plane.normal[2] > 0 &&
  ( le->pos.trDelta[2] < 40 || le->pos.trDelta[2] < -cg.frametime * le->pos.trDelta[2] ) ) ) {
  le->pos.trType = TR_STATIONARY;
 } else {

 }
}
