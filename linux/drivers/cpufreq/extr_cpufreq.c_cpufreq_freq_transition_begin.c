
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {scalar_t__ transition_task; int transition_ongoing; int transition_lock; int transition_wait; } ;
struct cpufreq_freqs {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CPUFREQ_ASYNC_NOTIFICATION ;
 int CPUFREQ_PRECHANGE ;
 int WARN_ON (int) ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_notify_transition (struct cpufreq_policy*,struct cpufreq_freqs*,int ) ;
 scalar_t__ current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int) ;

void cpufreq_freq_transition_begin(struct cpufreq_policy *policy,
  struct cpufreq_freqs *freqs)
{
 WARN_ON(!(cpufreq_driver->flags & CPUFREQ_ASYNC_NOTIFICATION)
    && current == policy->transition_task);

wait:
 wait_event(policy->transition_wait, !policy->transition_ongoing);

 spin_lock(&policy->transition_lock);

 if (unlikely(policy->transition_ongoing)) {
  spin_unlock(&policy->transition_lock);
  goto wait;
 }

 policy->transition_ongoing = 1;
 policy->transition_task = current;

 spin_unlock(&policy->transition_lock);

 cpufreq_notify_transition(policy, freqs, CPUFREQ_PRECHANGE);
}
