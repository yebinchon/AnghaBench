
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* update_limits ) (unsigned int) ;} ;


 TYPE_1__* cpufreq_driver ;
 int cpufreq_update_policy (unsigned int) ;
 int stub1 (unsigned int) ;

void cpufreq_update_limits(unsigned int cpu)
{
 if (cpufreq_driver->update_limits)
  cpufreq_driver->update_limits(cpu);
 else
  cpufreq_update_policy(cpu);
}
