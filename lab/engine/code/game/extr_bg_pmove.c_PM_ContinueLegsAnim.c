
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {int legsAnim; scalar_t__ legsTimer; } ;


 int ANIM_TOGGLEBIT ;
 int PM_StartLegsAnim (int) ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_ContinueLegsAnim( int anim ) {
 if ( ( pm->ps->legsAnim & ~ANIM_TOGGLEBIT ) == anim ) {
  return;
 }
 if ( pm->ps->legsTimer > 0 ) {
  return;
 }
 PM_StartLegsAnim( anim );
}
