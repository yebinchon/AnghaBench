
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int next_hrtimer; } ;


 int WRITE_ONCE (int ,int ) ;
 int cpuidle_enter_state (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 int cpuidle_enter_state_coupled (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 scalar_t__ cpuidle_state_is_coupled (struct cpuidle_driver*,int) ;
 int tick_nohz_get_next_hrtimer () ;

int cpuidle_enter(struct cpuidle_driver *drv, struct cpuidle_device *dev,
    int index)
{
 int ret = 0;







 WRITE_ONCE(dev->next_hrtimer, tick_nohz_get_next_hrtimer());

 if (cpuidle_state_is_coupled(drv, index))
  ret = cpuidle_enter_state_coupled(dev, drv, index);
 else
  ret = cpuidle_enter_state(dev, drv, index);

 WRITE_ONCE(dev->next_hrtimer, 0);
 return ret;
}
