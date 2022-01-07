
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int cpus; } ;


 int _speedstep_set_state ;
 int cpu_online_mask ;
 unsigned int cpumask_any_and (int ,int ) ;
 int smp_call_function_single (unsigned int,int ,unsigned int*,int) ;

__attribute__((used)) static int speedstep_target(struct cpufreq_policy *policy, unsigned int index)
{
 unsigned int policy_cpu;

 policy_cpu = cpumask_any_and(policy->cpus, cpu_online_mask);

 smp_call_function_single(policy_cpu, _speedstep_set_state, &index,
     1);

 return 0;
}
