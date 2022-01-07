
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int EINVAL ;
 int WARN_ON (int) ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 scalar_t__ cpufreq_disabled () ;
 int cpufreq_fast_switch_count ;
 int cpufreq_fast_switch_lock ;
 int cpufreq_policy_notifier_list ;
 int cpufreq_transition_notifier_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int srcu_notifier_chain_unregister (int *,struct notifier_block*) ;

int cpufreq_unregister_notifier(struct notifier_block *nb, unsigned int list)
{
 int ret;

 if (cpufreq_disabled())
  return -EINVAL;

 switch (list) {
 case 128:
  mutex_lock(&cpufreq_fast_switch_lock);

  ret = srcu_notifier_chain_unregister(
    &cpufreq_transition_notifier_list, nb);
  if (!ret && !WARN_ON(cpufreq_fast_switch_count >= 0))
   cpufreq_fast_switch_count++;

  mutex_unlock(&cpufreq_fast_switch_lock);
  break;
 case 129:
  ret = blocking_notifier_chain_unregister(
    &cpufreq_policy_notifier_list, nb);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
