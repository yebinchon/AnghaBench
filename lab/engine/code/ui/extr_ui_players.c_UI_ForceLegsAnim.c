
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int legsAnim; int legsAnimationTimer; } ;
typedef TYPE_1__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 int LEGS_JUMP ;
 int UI_TIMER_JUMP ;

__attribute__((used)) static void UI_ForceLegsAnim( playerInfo_t *pi, int anim ) {
 pi->legsAnim = ( ( pi->legsAnim & ANIM_TOGGLEBIT ) ^ ANIM_TOGGLEBIT ) | anim;

 if ( anim == LEGS_JUMP ) {
  pi->legsAnimationTimer = UI_TIMER_JUMP;
 }
}
