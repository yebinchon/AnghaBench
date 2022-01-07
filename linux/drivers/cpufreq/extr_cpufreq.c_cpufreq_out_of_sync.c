
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cur; } ;
struct cpufreq_freqs {unsigned int new; int old; } ;


 int cpufreq_freq_transition_begin (struct cpufreq_policy*,struct cpufreq_freqs*) ;
 int cpufreq_freq_transition_end (struct cpufreq_policy*,struct cpufreq_freqs*,int ) ;
 int pr_debug (char*,int ,unsigned int) ;

__attribute__((used)) static void cpufreq_out_of_sync(struct cpufreq_policy *policy,
    unsigned int new_freq)
{
 struct cpufreq_freqs freqs;

 pr_debug("Warning: CPU frequency out of sync: cpufreq and timing core thinks of %u, is %u kHz\n",
   policy->cur, new_freq);

 freqs.old = policy->cur;
 freqs.new = new_freq;

 cpufreq_freq_transition_begin(policy, &freqs);
 cpufreq_freq_transition_end(policy, &freqs, 0);
}
