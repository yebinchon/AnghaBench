
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const vec3_t ;
struct TYPE_4__ {scalar_t__ eType; int apos; int pos; } ;
struct TYPE_5__ {TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;


 int BG_EvaluateTrajectory (int *,int,int const) ;
 int ENTITYNUM_MAX_NORMAL ;
 scalar_t__ ET_MOVER ;
 int VectorAdd (int const,int const,int const) ;
 int VectorCopy (int const,int const) ;
 int VectorSubtract (int const,int const,int const) ;
 TYPE_2__* cg_entities ;

void CG_AdjustPositionForMover(const vec3_t in, int moverNum, int fromTime, int toTime, vec3_t out, vec3_t angles_in, vec3_t angles_out) {
 centity_t *cent;
 vec3_t oldOrigin, origin, deltaOrigin;
 vec3_t oldAngles, angles, deltaAngles;

 if ( moverNum <= 0 || moverNum >= ENTITYNUM_MAX_NORMAL ) {
  VectorCopy( in, out );
  VectorCopy(angles_in, angles_out);
  return;
 }

 cent = &cg_entities[ moverNum ];
 if ( cent->currentState.eType != ET_MOVER ) {
  VectorCopy( in, out );
  VectorCopy(angles_in, angles_out);
  return;
 }

 BG_EvaluateTrajectory( &cent->currentState.pos, fromTime, oldOrigin );
 BG_EvaluateTrajectory( &cent->currentState.apos, fromTime, oldAngles );

 BG_EvaluateTrajectory( &cent->currentState.pos, toTime, origin );
 BG_EvaluateTrajectory( &cent->currentState.apos, toTime, angles );

 VectorSubtract( origin, oldOrigin, deltaOrigin );
 VectorSubtract( angles, oldAngles, deltaAngles );

 VectorAdd( in, deltaOrigin, out );
 VectorAdd( angles_in, deltaAngles, angles_out );

}
