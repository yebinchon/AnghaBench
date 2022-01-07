
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int CPUFREQ_HIGH ;
 scalar_t__ cur_freq ;
 int do_set_cpu_speed (struct cpufreq_policy*,int ) ;
 int is_pmu_based ;
 scalar_t__ low_freq ;
 int no_schedule ;
 scalar_t__ sleep_freq ;

__attribute__((used)) static int pmac_cpufreq_suspend(struct cpufreq_policy *policy)
{







 no_schedule = 1;
 sleep_freq = cur_freq;
 if (cur_freq == low_freq && !is_pmu_based)
  do_set_cpu_speed(policy, CPUFREQ_HIGH);
 return 0;
}
