
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int legsAnim; scalar_t__ legsAnimationTimer; } ;
typedef TYPE_1__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 int JUMP_HEIGHT ;
 int LEGS_IDLE ;
 int LEGS_JUMP ;
 int LEGS_LAND ;
 int M_PI ;
 int UI_ForceLegsAnim (TYPE_1__*,int) ;
 int UI_SetLegsAnim (TYPE_1__*,int ) ;
 int UI_TIMER_JUMP ;
 int UI_TIMER_LAND ;
 int jumpHeight ;
 int sin (int) ;

__attribute__((used)) static void UI_LegsSequencing( playerInfo_t *pi ) {
 int currentAnim;

 currentAnim = pi->legsAnim & ~ANIM_TOGGLEBIT;

 if ( pi->legsAnimationTimer > 0 ) {
  if ( currentAnim == LEGS_JUMP ) {
   jumpHeight = JUMP_HEIGHT * sin( M_PI * ( UI_TIMER_JUMP - pi->legsAnimationTimer ) / UI_TIMER_JUMP );
  }
  return;
 }

 if ( currentAnim == LEGS_JUMP ) {
  UI_ForceLegsAnim( pi, LEGS_LAND );
  pi->legsAnimationTimer = UI_TIMER_LAND;
  jumpHeight = 0;
  return;
 }

 if ( currentAnim == LEGS_LAND ) {
  UI_SetLegsAnim( pi, LEGS_IDLE );
  return;
 }
}
