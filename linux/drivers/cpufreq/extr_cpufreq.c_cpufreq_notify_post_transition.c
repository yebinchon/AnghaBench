
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int new; int old; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int cpufreq_notify_transition (struct cpufreq_policy*,struct cpufreq_freqs*,int ) ;
 int swap (int ,int ) ;

__attribute__((used)) static void cpufreq_notify_post_transition(struct cpufreq_policy *policy,
  struct cpufreq_freqs *freqs, int transition_failed)
{
 cpufreq_notify_transition(policy, freqs, CPUFREQ_POSTCHANGE);
 if (!transition_failed)
  return;

 swap(freqs->old, freqs->new);
 cpufreq_notify_transition(policy, freqs, CPUFREQ_PRECHANGE);
 cpufreq_notify_transition(policy, freqs, CPUFREQ_POSTCHANGE);
}
