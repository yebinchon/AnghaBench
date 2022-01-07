
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_target {unsigned int freq; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int cpu; } ;


 int __sh_cpufreq_target ;
 int work_on_cpu (int ,int ,struct cpufreq_target*) ;

__attribute__((used)) static int sh_cpufreq_target(struct cpufreq_policy *policy,
        unsigned int target_freq,
        unsigned int relation)
{
 struct cpufreq_target data = { .policy = policy, .freq = target_freq };

 return work_on_cpu(policy->cpu, __sh_cpufreq_target, &data);
}
