
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int fast_switch_enabled; } ;


 int WARN_ON (int) ;
 scalar_t__ cpufreq_fast_switch_count ;
 int cpufreq_fast_switch_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cpufreq_disable_fast_switch(struct cpufreq_policy *policy)
{
 mutex_lock(&cpufreq_fast_switch_lock);
 if (policy->fast_switch_enabled) {
  policy->fast_switch_enabled = 0;
  if (!WARN_ON(cpufreq_fast_switch_count <= 0))
   cpufreq_fast_switch_count--;
 }
 mutex_unlock(&cpufreq_fast_switch_lock);
}
