
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int UINT_MAX ;
 int find_deepest_state (struct cpuidle_driver*,struct cpuidle_device*,int ,int ,int) ;

int cpuidle_find_deepest_state(struct cpuidle_driver *drv,
          struct cpuidle_device *dev)
{
 return find_deepest_state(drv, dev, UINT_MAX, 0, 0);
}
