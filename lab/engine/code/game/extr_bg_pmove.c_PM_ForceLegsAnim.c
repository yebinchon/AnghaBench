
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {scalar_t__ legsTimer; } ;


 int PM_StartLegsAnim (int) ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_ForceLegsAnim( int anim ) {
 pm->ps->legsTimer = 0;
 PM_StartLegsAnim( anim );
}
