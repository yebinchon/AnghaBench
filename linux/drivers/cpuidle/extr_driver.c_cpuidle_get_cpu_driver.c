
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int cpu; } ;


 struct cpuidle_driver* __cpuidle_get_cpu_driver (int ) ;

struct cpuidle_driver *cpuidle_get_cpu_driver(struct cpuidle_device *dev)
{
 if (!dev)
  return ((void*)0);

 return __cpuidle_get_cpu_driver(dev->cpu);
}
