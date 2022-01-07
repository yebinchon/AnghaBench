
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int (* select ) (struct cpuidle_driver*,struct cpuidle_device*,int*) ;} ;


 TYPE_1__* cpuidle_curr_governor ;
 int stub1 (struct cpuidle_driver*,struct cpuidle_device*,int*) ;

int cpuidle_select(struct cpuidle_driver *drv, struct cpuidle_device *dev,
     bool *stop_tick)
{
 return cpuidle_curr_governor->select(drv, dev, stop_tick);
}
