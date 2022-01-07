
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct cpuidle_driver {size_t state_count; struct cpumask* cpumask; TYPE_1__* states; } ;
struct TYPE_2__ {int * enter; } ;


 scalar_t__ cpu_present_mask ;
 TYPE_1__* cpuidle_state_table ;
 int max_idle_state ;
 struct cpuidle_driver powernv_idle_driver ;

__attribute__((used)) static int powernv_cpuidle_driver_init(void)
{
 int idle_state;
 struct cpuidle_driver *drv = &powernv_idle_driver;

 drv->state_count = 0;

 for (idle_state = 0; idle_state < max_idle_state; ++idle_state) {

  if (cpuidle_state_table[idle_state].enter == ((void*)0))
   continue;

  drv->states[drv->state_count] =
   cpuidle_state_table[idle_state];

  drv->state_count += 1;
 }
 drv->cpumask = (struct cpumask *)cpu_present_mask;

 return 0;
}
