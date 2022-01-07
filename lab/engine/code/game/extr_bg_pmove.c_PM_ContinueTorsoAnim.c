
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {int torsoAnim; scalar_t__ torsoTimer; } ;


 int ANIM_TOGGLEBIT ;
 int PM_StartTorsoAnim (int) ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_ContinueTorsoAnim( int anim ) {
 if ( ( pm->ps->torsoAnim & ~ANIM_TOGGLEBIT ) == anim ) {
  return;
 }
 if ( pm->ps->torsoTimer > 0 ) {
  return;
 }
 PM_StartTorsoAnim( anim );
}
