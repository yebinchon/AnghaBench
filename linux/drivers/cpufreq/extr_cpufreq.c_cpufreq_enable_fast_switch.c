
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int fast_switch_enabled; int cpu; int fast_switch_possible; int rwsem; } ;


 scalar_t__ cpufreq_fast_switch_count ;
 int cpufreq_fast_switch_lock ;
 int cpufreq_list_transition_notifiers () ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ) ;

void cpufreq_enable_fast_switch(struct cpufreq_policy *policy)
{
 lockdep_assert_held(&policy->rwsem);

 if (!policy->fast_switch_possible)
  return;

 mutex_lock(&cpufreq_fast_switch_lock);
 if (cpufreq_fast_switch_count >= 0) {
  cpufreq_fast_switch_count++;
  policy->fast_switch_enabled = 1;
 } else {
  pr_warn("CPU%u: Fast frequency switching not enabled\n",
   policy->cpu);
  cpufreq_list_transition_notifiers();
 }
 mutex_unlock(&cpufreq_fast_switch_lock);
}
