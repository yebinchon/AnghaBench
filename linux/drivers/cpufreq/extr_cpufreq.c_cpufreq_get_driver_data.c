
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* driver_data; } ;


 TYPE_1__* cpufreq_driver ;

void *cpufreq_get_driver_data(void)
{
 if (cpufreq_driver)
  return cpufreq_driver->driver_data;

 return ((void*)0);
}
