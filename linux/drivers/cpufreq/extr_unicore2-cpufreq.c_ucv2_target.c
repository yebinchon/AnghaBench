
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int clk; int cur; } ;
struct cpufreq_freqs {unsigned int new; int old; } ;


 int clk_set_rate (int ,unsigned int) ;
 int cpufreq_freq_transition_begin (struct cpufreq_policy*,struct cpufreq_freqs*) ;
 int cpufreq_freq_transition_end (struct cpufreq_policy*,struct cpufreq_freqs*,int) ;

__attribute__((used)) static int ucv2_target(struct cpufreq_policy *policy,
    unsigned int target_freq,
    unsigned int relation)
{
 struct cpufreq_freqs freqs;
 int ret;

 freqs.old = policy->cur;
 freqs.new = target_freq;

 cpufreq_freq_transition_begin(policy, &freqs);
 ret = clk_set_rate(policy->clk, target_freq * 1000);
 cpufreq_freq_transition_end(policy, &freqs, ret);

 return ret;
}
