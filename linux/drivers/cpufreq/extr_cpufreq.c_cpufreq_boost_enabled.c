
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int boost_enabled; } ;


 TYPE_1__* cpufreq_driver ;

int cpufreq_boost_enabled(void)
{
 return cpufreq_driver->boost_enabled;
}
