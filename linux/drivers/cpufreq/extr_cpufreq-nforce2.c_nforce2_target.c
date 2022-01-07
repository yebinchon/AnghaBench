
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {unsigned int max; unsigned int min; int cpu; } ;
struct cpufreq_freqs {unsigned int old; unsigned int new; } ;


 int EINVAL ;
 int cpufreq_freq_transition_begin (struct cpufreq_policy*,struct cpufreq_freqs*) ;
 int cpufreq_freq_transition_end (struct cpufreq_policy*,struct cpufreq_freqs*,int ) ;
 int fid ;
 unsigned int nforce2_get (int ) ;
 scalar_t__ nforce2_set_fsb (unsigned int) ;
 int pr_debug (char*,unsigned int,...) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int nforce2_target(struct cpufreq_policy *policy,
     unsigned int target_freq, unsigned int relation)
{

 struct cpufreq_freqs freqs;
 unsigned int target_fsb;

 if ((target_freq > policy->max) || (target_freq < policy->min))
  return -EINVAL;

 target_fsb = target_freq / (fid * 100);

 freqs.old = nforce2_get(policy->cpu);
 freqs.new = target_fsb * fid * 100;

 if (freqs.old == freqs.new)
  return 0;

 pr_debug("Old CPU frequency %d kHz, new %d kHz\n",
        freqs.old, freqs.new);

 cpufreq_freq_transition_begin(policy, &freqs);




 if (nforce2_set_fsb(target_fsb) < 0)
  pr_err("Changing FSB to %d failed\n", target_fsb);
 else
  pr_debug("Changed FSB successfully to %d\n",
   target_fsb);




 cpufreq_freq_transition_end(policy, &freqs, 0);

 return 0;
}
