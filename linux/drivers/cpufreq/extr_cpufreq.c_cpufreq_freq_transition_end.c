
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int transition_ongoing; int transition_wait; int * transition_task; } ;
struct cpufreq_freqs {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int cpufreq_notify_post_transition (struct cpufreq_policy*,struct cpufreq_freqs*,int) ;
 int wake_up (int *) ;

void cpufreq_freq_transition_end(struct cpufreq_policy *policy,
  struct cpufreq_freqs *freqs, int transition_failed)
{
 if (WARN_ON(!policy->transition_ongoing))
  return;

 cpufreq_notify_post_transition(policy, freqs, transition_failed);

 policy->transition_ongoing = 0;
 policy->transition_task = ((void*)0);

 wake_up(&policy->transition_wait);
}
