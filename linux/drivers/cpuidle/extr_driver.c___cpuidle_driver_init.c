
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct cpuidle_driver {int state_count; int bctimer; TYPE_1__* states; struct cpumask* cpumask; scalar_t__ refcnt; } ;
struct TYPE_2__ {int flags; } ;


 int CPUIDLE_FLAG_TIMER_STOP ;
 scalar_t__ cpu_possible_mask ;

__attribute__((used)) static void __cpuidle_driver_init(struct cpuidle_driver *drv)
{
 int i;

 drv->refcnt = 0;






 if (!drv->cpumask)
  drv->cpumask = (struct cpumask *)cpu_possible_mask;






 for (i = drv->state_count - 1; i >= 0 ; i--) {
  if (drv->states[i].flags & CPUIDLE_FLAG_TIMER_STOP) {
   drv->bctimer = 1;
   break;
  }
 }
}
