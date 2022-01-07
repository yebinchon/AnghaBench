
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_boost; } ;


 TYPE_1__* cpufreq_driver ;

__attribute__((used)) static bool cpufreq_boost_supported(void)
{
 return cpufreq_driver->set_boost;
}
