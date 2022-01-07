
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int * vec3_t ;
struct TYPE_18__ {int normal; } ;
struct TYPE_21__ {double fraction; int* endpos; TYPE_4__ plane; scalar_t__ allsolid; scalar_t__ startsolid; } ;
typedef TYPE_7__ trace_t ;
typedef int qboolean ;
struct TYPE_19__ {int yawAngle; } ;
struct TYPE_20__ {TYPE_5__ legs; } ;
struct TYPE_15__ {int powerups; } ;
struct TYPE_22__ {TYPE_6__ pe; int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_8__ centity_t ;
struct TYPE_17__ {int shadowMarkShader; } ;
struct TYPE_16__ {int member_0; int member_1; int member_2; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {TYPE_3__ media; } ;


 int CG_ImpactMark (int ,int*,int ,int ,float,float,float,int,int ,int,int ) ;
 int MASK_PLAYERSOLID ;
 int PW_INVIS ;
 scalar_t__ SHADOW_DISTANCE ;
 int VectorCopy (int ,int *) ;
 TYPE_11__ cg_shadows ;
 TYPE_10__ cgs ;
 int qfalse ;
 int qtrue ;
 int trap_CM_BoxTrace (TYPE_7__*,int ,int *,int *,int *,int ,int ) ;

__attribute__((used)) static qboolean CG_PlayerShadow( centity_t *cent, float *shadowPlane ) {
 vec3_t end, mins = {-15, -15, 0}, maxs = {15, 15, 2};
 trace_t trace;
 float alpha;

 *shadowPlane = 0;

 if ( cg_shadows.integer == 0 ) {
  return qfalse;
 }


 if ( cent->currentState.powerups & ( 1 << PW_INVIS ) ) {
  return qfalse;
 }


 VectorCopy( cent->lerpOrigin, end );
 end[2] -= SHADOW_DISTANCE;

 trap_CM_BoxTrace( &trace, cent->lerpOrigin, end, mins, maxs, 0, MASK_PLAYERSOLID );


 if ( trace.fraction == 1.0 || trace.startsolid || trace.allsolid ) {
  return qfalse;
 }

 *shadowPlane = trace.endpos[2] + 1;

 if ( cg_shadows.integer != 1 ) {
  return qtrue;
 }


 alpha = 1.0 - trace.fraction;






 CG_ImpactMark( cgs.media.shadowMarkShader, trace.endpos, trace.plane.normal,
  cent->pe.legs.yawAngle, alpha,alpha,alpha,1, qfalse, 24, qtrue );

 return qtrue;
}
