
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpuidle_driver {TYPE_2__* states; } ;
struct cpuidle_device {TYPE_1__* states_usage; } ;
struct TYPE_4__ {unsigned int target_residency; scalar_t__ disabled; } ;
struct TYPE_3__ {scalar_t__ disable; } ;



__attribute__((used)) static int teo_find_shallower_state(struct cpuidle_driver *drv,
        struct cpuidle_device *dev, int state_idx,
        unsigned int duration_us)
{
 int i;

 for (i = state_idx - 1; i >= 0; i--) {
  if (drv->states[i].disabled || dev->states_usage[i].disable)
   continue;

  state_idx = i;
  if (drv->states[i].target_residency <= duration_us)
   break;
 }
 return state_idx;
}
