
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_10__ {int apos; int pos; } ;
struct TYPE_8__ {int apos; int pos; } ;
struct TYPE_12__ {float* lerpOrigin; void** lerpAngles; TYPE_3__ nextState; TYPE_1__ currentState; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_13__ {float frameInterpolation; TYPE_4__* nextSnap; TYPE_2__* snap; } ;
struct TYPE_11__ {int serverTime; } ;
struct TYPE_9__ {int serverTime; } ;


 int BG_EvaluateTrajectory (int *,int ,float*) ;
 int CG_Error (char*) ;
 void* LerpAngle (float,float,float) ;
 TYPE_6__ cg ;

__attribute__((used)) static void CG_InterpolateEntityPosition( centity_t *cent ) {
 vec3_t current, next;
 float f;



 if ( cg.nextSnap == ((void*)0) ) {
  CG_Error( "CG_InterpoateEntityPosition: cg.nextSnap == NULL" );
 }

 f = cg.frameInterpolation;



 BG_EvaluateTrajectory( &cent->currentState.pos, cg.snap->serverTime, current );
 BG_EvaluateTrajectory( &cent->nextState.pos, cg.nextSnap->serverTime, next );

 cent->lerpOrigin[0] = current[0] + f * ( next[0] - current[0] );
 cent->lerpOrigin[1] = current[1] + f * ( next[1] - current[1] );
 cent->lerpOrigin[2] = current[2] + f * ( next[2] - current[2] );

 BG_EvaluateTrajectory( &cent->currentState.apos, cg.snap->serverTime, current );
 BG_EvaluateTrajectory( &cent->nextState.apos, cg.nextSnap->serverTime, next );

 cent->lerpAngles[0] = LerpAngle( current[0], next[0], f );
 cent->lerpAngles[1] = LerpAngle( current[1], next[1], f );
 cent->lerpAngles[2] = LerpAngle( current[2], next[2], f );

}
