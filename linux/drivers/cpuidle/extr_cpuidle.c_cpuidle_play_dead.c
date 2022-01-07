
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int state_count; TYPE_1__* states; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int (* enter_dead ) (struct cpuidle_device*,int) ;} ;


 int ENODEV ;
 struct cpuidle_device* __this_cpu_read (int ) ;
 int cpuidle_devices ;
 struct cpuidle_driver* cpuidle_get_cpu_driver (struct cpuidle_device*) ;
 int stub1 (struct cpuidle_device*,int) ;

int cpuidle_play_dead(void)
{
 struct cpuidle_device *dev = __this_cpu_read(cpuidle_devices);
 struct cpuidle_driver *drv = cpuidle_get_cpu_driver(dev);
 int i;

 if (!drv)
  return -ENODEV;


 for (i = drv->state_count - 1; i >= 0; i--)
  if (drv->states[i].enter_dead)
   return drv->states[i].enter_dead(dev, i);

 return -ENODEV;
}
