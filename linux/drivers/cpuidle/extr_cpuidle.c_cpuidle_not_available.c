
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int enabled; } ;


 int initialized ;
 scalar_t__ off ;

bool cpuidle_not_available(struct cpuidle_driver *drv,
      struct cpuidle_device *dev)
{
 return off || !initialized || !drv || !dev || !dev->enabled;
}
