
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loopSound; scalar_t__ eType; int constantLight; int number; } ;
struct TYPE_7__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;
struct TYPE_8__ {int * gameSounds; } ;


 int CG_SetEntitySoundPosition (TYPE_2__*) ;
 scalar_t__ ET_SPEAKER ;
 TYPE_3__ cgs ;
 int trap_R_AddLightToScene (int ,float,float,float,float) ;
 int trap_S_AddLoopingSound (int ,int ,int ,int ) ;
 int trap_S_AddRealLoopingSound (int ,int ,int ,int ) ;
 int vec3_origin ;

__attribute__((used)) static void CG_EntityEffects( centity_t *cent ) {


 CG_SetEntitySoundPosition( cent );


 if ( cent->currentState.loopSound ) {
  if (cent->currentState.eType != ET_SPEAKER) {
   trap_S_AddLoopingSound( cent->currentState.number, cent->lerpOrigin, vec3_origin,
    cgs.gameSounds[ cent->currentState.loopSound ] );
  } else {
   trap_S_AddRealLoopingSound( cent->currentState.number, cent->lerpOrigin, vec3_origin,
    cgs.gameSounds[ cent->currentState.loopSound ] );
  }
 }



 if(cent->currentState.constantLight)
 {
  int cl;
  float i, r, g, b;

  cl = cent->currentState.constantLight;
  r = (float) (cl & 0xFF) / 255.0;
  g = (float) ((cl >> 8) & 0xFF) / 255.0;
  b = (float) ((cl >> 16) & 0xFF) / 255.0;
  i = (float) ((cl >> 24) & 0xFF) * 4.0;
  trap_R_AddLightToScene(cent->lerpOrigin, i, r, g, b);
 }

}
