
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_freqs {int ret; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int freq_table; int cpus; int cpu; } ;


 int cpu_online_mask ;
 unsigned int cpumask_any_and (int ,int ) ;
 int cpumask_copy (int ,int ) ;
 int get_freqs_on_cpu ;
 int smp_call_function_single (unsigned int,int ,struct get_freqs*,int) ;
 int speedstep_freqs ;
 int topology_sibling_cpumask (int ) ;

__attribute__((used)) static int speedstep_cpu_init(struct cpufreq_policy *policy)
{
 unsigned int policy_cpu;
 struct get_freqs gf;





 policy_cpu = cpumask_any_and(policy->cpus, cpu_online_mask);


 gf.policy = policy;
 smp_call_function_single(policy_cpu, get_freqs_on_cpu, &gf, 1);
 if (gf.ret)
  return gf.ret;

 policy->freq_table = speedstep_freqs;

 return 0;
}
