
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {TYPE_1__* states; } ;
struct TYPE_2__ {int flags; } ;


 int CPUIDLE_FLAG_COUPLED ;

bool cpuidle_state_is_coupled(struct cpuidle_driver *drv, int state)
{
 return drv->states[state].flags & CPUIDLE_FLAG_COUPLED;
}
