
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_12__ {scalar_t__* normal; } ;
struct TYPE_15__ {int fraction; double* endpos; TYPE_1__ plane; int entityNum; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_11__ {int* trDelta; int trTime; int trBase; } ;
struct TYPE_14__ {TYPE_10__ pos; int groundEntityNum; } ;
struct TYPE_13__ {int currentOrigin; } ;
struct TYPE_16__ {TYPE_3__ s; TYPE_2__ r; int physicsBounce; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_17__ {int previousTime; int time; } ;


 int BG_EvaluateTrajectoryDelta (TYPE_10__*,int,int ) ;
 float DotProduct (int ,scalar_t__*) ;
 int G_SetOrigin (TYPE_5__*,double*) ;
 int SnapVector (double*) ;
 int VectorAdd (int ,scalar_t__*,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,scalar_t__*,int*) ;
 int VectorScale (int*,int ,int*) ;
 TYPE_6__ level ;

void G_BounceItem( gentity_t *ent, trace_t *trace ) {
 vec3_t velocity;
 float dot;
 int hitTime;


 hitTime = level.previousTime + ( level.time - level.previousTime ) * trace->fraction;
 BG_EvaluateTrajectoryDelta( &ent->s.pos, hitTime, velocity );
 dot = DotProduct( velocity, trace->plane.normal );
 VectorMA( velocity, -2*dot, trace->plane.normal, ent->s.pos.trDelta );


 VectorScale( ent->s.pos.trDelta, ent->physicsBounce, ent->s.pos.trDelta );


 if ( trace->plane.normal[2] > 0 && ent->s.pos.trDelta[2] < 40 ) {
  trace->endpos[2] += 1.0;
  SnapVector( trace->endpos );
  G_SetOrigin( ent, trace->endpos );
  ent->s.groundEntityNum = trace->entityNum;
  return;
 }

 VectorAdd( ent->r.currentOrigin, trace->plane.normal, ent->r.currentOrigin);
 VectorCopy( ent->r.currentOrigin, ent->s.pos.trBase );
 ent->s.pos.trTime = level.time;
}
