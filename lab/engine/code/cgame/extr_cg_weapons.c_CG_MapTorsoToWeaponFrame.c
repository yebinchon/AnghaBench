
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* animations; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_4__ {int firstFrame; } ;


 size_t TORSO_ATTACK ;
 size_t TORSO_ATTACK2 ;
 size_t TORSO_DROP ;

__attribute__((used)) static int CG_MapTorsoToWeaponFrame( clientInfo_t *ci, int frame ) {


 if ( frame >= ci->animations[TORSO_DROP].firstFrame
  && frame < ci->animations[TORSO_DROP].firstFrame + 9 ) {
  return frame - ci->animations[TORSO_DROP].firstFrame + 6;
 }


 if ( frame >= ci->animations[TORSO_ATTACK].firstFrame
  && frame < ci->animations[TORSO_ATTACK].firstFrame + 6 ) {
  return 1 + frame - ci->animations[TORSO_ATTACK].firstFrame;
 }


 if ( frame >= ci->animations[TORSO_ATTACK2].firstFrame
  && frame < ci->animations[TORSO_ATTACK2].firstFrame + 6 ) {
  return 1 + frame - ci->animations[TORSO_ATTACK2].firstFrame;
 }

 return 0;
}
