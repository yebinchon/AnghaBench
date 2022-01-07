
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int torsoAnim; scalar_t__ weapon; scalar_t__ currentWeapon; scalar_t__ torsoAnimationTimer; } ;
typedef TYPE_1__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 int TORSO_ATTACK ;
 int TORSO_ATTACK2 ;
 int TORSO_DROP ;
 int TORSO_GESTURE ;
 int TORSO_RAISE ;
 int TORSO_STAND ;
 int UI_ForceTorsoAnim (TYPE_1__*,int) ;
 int UI_PlayerInfo_SetWeapon (TYPE_1__*,scalar_t__) ;
 int UI_SetTorsoAnim (TYPE_1__*,int ) ;
 void* UI_TIMER_WEAPON_SWITCH ;

__attribute__((used)) static void UI_TorsoSequencing( playerInfo_t *pi ) {
 int currentAnim;

 currentAnim = pi->torsoAnim & ~ANIM_TOGGLEBIT;

 if ( pi->weapon != pi->currentWeapon ) {
  if ( currentAnim != TORSO_DROP ) {
   pi->torsoAnimationTimer = UI_TIMER_WEAPON_SWITCH;
   UI_ForceTorsoAnim( pi, TORSO_DROP );
  }
 }

 if ( pi->torsoAnimationTimer > 0 ) {
  return;
 }

 if( currentAnim == TORSO_GESTURE ) {
  UI_SetTorsoAnim( pi, TORSO_STAND );
  return;
 }

 if( currentAnim == TORSO_ATTACK || currentAnim == TORSO_ATTACK2 ) {
  UI_SetTorsoAnim( pi, TORSO_STAND );
  return;
 }

 if ( currentAnim == TORSO_DROP ) {
  UI_PlayerInfo_SetWeapon( pi, pi->weapon );
  pi->torsoAnimationTimer = UI_TIMER_WEAPON_SWITCH;
  UI_ForceTorsoAnim( pi, TORSO_RAISE );
  return;
 }

 if ( currentAnim == TORSO_RAISE ) {
  UI_SetTorsoAnim( pi, TORSO_STAND );
  return;
 }
}
