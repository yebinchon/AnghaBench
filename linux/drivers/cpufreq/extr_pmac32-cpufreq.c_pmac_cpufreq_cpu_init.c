
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int cpufreq_generic_init (struct cpufreq_policy*,int ,int ) ;
 int pmac_cpu_freqs ;
 int transition_latency ;

__attribute__((used)) static int pmac_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 cpufreq_generic_init(policy, pmac_cpu_freqs, transition_latency);
 return 0;
}
