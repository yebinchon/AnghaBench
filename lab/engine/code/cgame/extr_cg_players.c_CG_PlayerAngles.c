
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_17__ {scalar_t__ fixedlegs; scalar_t__ fixedtorso; } ;
typedef TYPE_6__ clientInfo_t ;
struct TYPE_15__ {int trDelta; } ;
struct TYPE_16__ {int legsAnim; int torsoAnim; int eFlags; int* angles2; int clientNum; TYPE_4__ pos; } ;
struct TYPE_13__ {int yawAngle; int pitchAngle; void* pitching; void* yawing; } ;
struct TYPE_12__ {int yawAngle; void* yawing; } ;
struct TYPE_14__ {TYPE_2__ torso; TYPE_1__ legs; } ;
struct TYPE_18__ {TYPE_5__ currentState; TYPE_3__ pe; int lerpAngles; } ;
typedef TYPE_7__ centity_t ;
struct TYPE_20__ {float value; } ;
struct TYPE_19__ {TYPE_6__* clientinfo; } ;


 int ANIM_TOGGLEBIT ;
 int AngleMod (int) ;
 int AnglesSubtract (int*,int*,int*) ;
 int AnglesToAxis (int*,int**) ;
 int CG_AddPainTwitch (TYPE_7__*,int*) ;
 int CG_Error (char*) ;
 int CG_SwingAngles (float,int,int,float,int*,void**) ;
 float DotProduct (int*,int*) ;
 int EF_DEAD ;
 int LEGS_IDLE ;
 int MAX_CLIENTS ;
 size_t PITCH ;
 size_t ROLL ;
 int TORSO_STAND ;
 int TORSO_STAND2 ;
 int VectorClear (int*) ;
 int VectorCopy (int ,int*) ;
 float VectorNormalize (int*) ;
 size_t YAW ;
 TYPE_9__ cg_swingSpeed ;
 TYPE_8__ cgs ;
 void* qtrue ;

__attribute__((used)) static void CG_PlayerAngles( centity_t *cent, vec3_t legs[3], vec3_t torso[3], vec3_t head[3] ) {
 vec3_t legsAngles, torsoAngles, headAngles;
 float dest;
 static int movementOffsets[8] = { 0, 22, 45, -22, 0, 22, -45, -22 };
 vec3_t velocity;
 float speed;
 int dir, clientNum;
 clientInfo_t *ci;

 VectorCopy( cent->lerpAngles, headAngles );
 headAngles[YAW] = AngleMod( headAngles[YAW] );
 VectorClear( legsAngles );
 VectorClear( torsoAngles );




 if ( ( cent->currentState.legsAnim & ~ANIM_TOGGLEBIT ) != LEGS_IDLE
  || ((cent->currentState.torsoAnim & ~ANIM_TOGGLEBIT) != TORSO_STAND
  && (cent->currentState.torsoAnim & ~ANIM_TOGGLEBIT) != TORSO_STAND2)) {

  cent->pe.torso.yawing = qtrue;
  cent->pe.torso.pitching = qtrue;
  cent->pe.legs.yawing = qtrue;
 }


 if ( cent->currentState.eFlags & EF_DEAD ) {

  dir = 0;
 } else {
  dir = cent->currentState.angles2[YAW];
  if ( dir < 0 || dir > 7 ) {
   CG_Error( "Bad player movement angle" );
  }
 }
 legsAngles[YAW] = headAngles[YAW] + movementOffsets[ dir ];
 torsoAngles[YAW] = headAngles[YAW] + 0.25 * movementOffsets[ dir ];


 CG_SwingAngles( torsoAngles[YAW], 25, 90, cg_swingSpeed.value, &cent->pe.torso.yawAngle, &cent->pe.torso.yawing );
 CG_SwingAngles( legsAngles[YAW], 40, 90, cg_swingSpeed.value, &cent->pe.legs.yawAngle, &cent->pe.legs.yawing );

 torsoAngles[YAW] = cent->pe.torso.yawAngle;
 legsAngles[YAW] = cent->pe.legs.yawAngle;





 if ( headAngles[PITCH] > 180 ) {
  dest = (-360 + headAngles[PITCH]) * 0.75f;
 } else {
  dest = headAngles[PITCH] * 0.75f;
 }
 CG_SwingAngles( dest, 15, 30, 0.1f, &cent->pe.torso.pitchAngle, &cent->pe.torso.pitching );
 torsoAngles[PITCH] = cent->pe.torso.pitchAngle;


 clientNum = cent->currentState.clientNum;
 if ( clientNum >= 0 && clientNum < MAX_CLIENTS ) {
  ci = &cgs.clientinfo[ clientNum ];
  if ( ci->fixedtorso ) {
   torsoAngles[PITCH] = 0.0f;
  }
 }





 VectorCopy( cent->currentState.pos.trDelta, velocity );
 speed = VectorNormalize( velocity );
 if ( speed ) {
  vec3_t axis[3];
  float side;

  speed *= 0.05f;

  AnglesToAxis( legsAngles, axis );
  side = speed * DotProduct( velocity, axis[1] );
  legsAngles[ROLL] -= side;

  side = speed * DotProduct( velocity, axis[0] );
  legsAngles[PITCH] += side;
 }


 clientNum = cent->currentState.clientNum;
 if ( clientNum >= 0 && clientNum < MAX_CLIENTS ) {
  ci = &cgs.clientinfo[ clientNum ];
  if ( ci->fixedlegs ) {
   legsAngles[YAW] = torsoAngles[YAW];
   legsAngles[PITCH] = 0.0f;
   legsAngles[ROLL] = 0.0f;
  }
 }


 CG_AddPainTwitch( cent, torsoAngles );


 AnglesSubtract( headAngles, torsoAngles, headAngles );
 AnglesSubtract( torsoAngles, legsAngles, torsoAngles );
 AnglesToAxis( legsAngles, legs );
 AnglesToAxis( torsoAngles, torso );
 AnglesToAxis( headAngles, head );
}
