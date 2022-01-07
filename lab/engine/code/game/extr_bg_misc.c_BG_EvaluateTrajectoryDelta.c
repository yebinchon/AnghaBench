
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {int trType; int trTime; int trDuration; int trDelta; } ;
typedef TYPE_1__ trajectory_t ;


 int Com_Error (int ,char*,int) ;
 float DEFAULT_GRAVITY ;
 int ERR_DROP ;
 float M_PI ;






 int VectorClear (float*) ;
 int VectorCopy (int ,float*) ;
 int VectorScale (int ,float,float*) ;
 float cos (float) ;

void BG_EvaluateTrajectoryDelta( const trajectory_t *tr, int atTime, vec3_t result ) {
 float deltaTime;
 float phase;

 switch( tr->trType ) {
 case 128:
 case 132:
  VectorClear( result );
  break;
 case 131:
  VectorCopy( tr->trDelta, result );
  break;
 case 129:
  deltaTime = ( atTime - tr->trTime ) / (float) tr->trDuration;
  phase = cos( deltaTime * M_PI * 2 );
  phase *= 0.5;
  VectorScale( tr->trDelta, phase, result );
  break;
 case 130:
  if ( atTime > tr->trTime + tr->trDuration ) {
   VectorClear( result );
   return;
  }
  VectorCopy( tr->trDelta, result );
  break;
 case 133:
  deltaTime = ( atTime - tr->trTime ) * 0.001;
  VectorCopy( tr->trDelta, result );
  result[2] -= DEFAULT_GRAVITY * deltaTime;
  break;
 default:
  Com_Error( ERR_DROP, "BG_EvaluateTrajectoryDelta: unknown trType: %i", tr->trType );
  break;
 }
}
