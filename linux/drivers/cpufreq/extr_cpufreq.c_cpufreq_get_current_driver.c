
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* cpufreq_driver ;

const char *cpufreq_get_current_driver(void)
{
 if (cpufreq_driver)
  return cpufreq_driver->name;

 return ((void*)0);
}
