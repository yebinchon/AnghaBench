
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_8__ {scalar_t__ fraction; int entityNum; scalar_t__ allsolid; scalar_t__ startsolid; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_9__ {int number; int solid; int pos; int modelindex; } ;
typedef TYPE_2__ entityState_t ;
typedef int clipHandle_t ;
struct TYPE_10__ {int lerpOrigin; TYPE_2__ currentState; int lerpAngles; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_11__ {int physicsTime; } ;


 int BG_EvaluateTrajectory (int *,int ,int*) ;
 int SOLID_BMODEL ;
 int VectorCopy (int ,int*) ;
 TYPE_6__ cg ;
 int cg_numSolidEntities ;
 TYPE_3__** cg_solidEntities ;
 scalar_t__ qtrue ;
 int trap_CM_InlineModel (int ) ;
 int trap_CM_TempBoxModel (int*,int*) ;
 int trap_CM_TransformedBoxTrace (TYPE_1__*,int* const,int* const,int* const,int* const,int ,int,int*,int*) ;
 int vec3_origin ;

__attribute__((used)) static void CG_ClipMoveToEntities ( const vec3_t start, const vec3_t mins, const vec3_t maxs, const vec3_t end,
       int skipNumber, int mask, trace_t *tr ) {
 int i, x, zd, zu;
 trace_t trace;
 entityState_t *ent;
 clipHandle_t cmodel;
 vec3_t bmins, bmaxs;
 vec3_t origin, angles;
 centity_t *cent;

 for ( i = 0 ; i < cg_numSolidEntities ; i++ ) {
  cent = cg_solidEntities[ i ];
  ent = &cent->currentState;

  if ( ent->number == skipNumber ) {
   continue;
  }

  if ( ent->solid == SOLID_BMODEL ) {

   cmodel = trap_CM_InlineModel( ent->modelindex );
   VectorCopy( cent->lerpAngles, angles );
   BG_EvaluateTrajectory( &cent->currentState.pos, cg.physicsTime, origin );
  } else {

   x = (ent->solid & 255);
   zd = ((ent->solid>>8) & 255);
   zu = ((ent->solid>>16) & 255) - 32;

   bmins[0] = bmins[1] = -x;
   bmaxs[0] = bmaxs[1] = x;
   bmins[2] = -zd;
   bmaxs[2] = zu;

   cmodel = trap_CM_TempBoxModel( bmins, bmaxs );
   VectorCopy( vec3_origin, angles );
   VectorCopy( cent->lerpOrigin, origin );
  }


  trap_CM_TransformedBoxTrace ( &trace, start, end,
   mins, maxs, cmodel, mask, origin, angles);

  if (trace.allsolid || trace.fraction < tr->fraction) {
   trace.entityNum = ent->number;
   *tr = trace;
  } else if (trace.startsolid) {
   tr->startsolid = qtrue;
  }
  if ( tr->allsolid ) {
   return;
  }
 }
}
