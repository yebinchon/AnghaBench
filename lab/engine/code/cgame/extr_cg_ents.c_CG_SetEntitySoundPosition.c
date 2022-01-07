
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {scalar_t__ solid; size_t modelindex; int number; } ;
struct TYPE_6__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;
struct TYPE_7__ {float** inlineModelMidpoints; } ;


 scalar_t__ SOLID_BMODEL ;
 int VectorAdd (int ,float*,int ) ;
 TYPE_3__ cgs ;
 int trap_S_UpdateEntityPosition (int ,int ) ;

void CG_SetEntitySoundPosition( centity_t *cent ) {
 if ( cent->currentState.solid == SOLID_BMODEL ) {
  vec3_t origin;
  float *v;

  v = cgs.inlineModelMidpoints[ cent->currentState.modelindex ];
  VectorAdd( cent->lerpOrigin, v, origin );
  trap_S_UpdateEntityPosition( cent->currentState.number, origin );
 } else {
  trap_S_UpdateEntityPosition( cent->currentState.number, cent->lerpOrigin );
 }
}
