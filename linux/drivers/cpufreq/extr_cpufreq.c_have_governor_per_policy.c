
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CPUFREQ_HAVE_GOVERNOR_PER_POLICY ;
 TYPE_1__* cpufreq_driver ;

bool have_governor_per_policy(void)
{
 return !!(cpufreq_driver->flags & CPUFREQ_HAVE_GOVERNOR_PER_POLICY);
}
