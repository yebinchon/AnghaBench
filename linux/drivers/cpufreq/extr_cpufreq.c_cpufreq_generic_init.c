
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int transition_latency; } ;
struct cpufreq_policy {int cpus; TYPE_1__ cpuinfo; struct cpufreq_frequency_table* freq_table; } ;
struct cpufreq_frequency_table {int dummy; } ;


 int cpumask_setall (int ) ;

void cpufreq_generic_init(struct cpufreq_policy *policy,
  struct cpufreq_frequency_table *table,
  unsigned int transition_latency)
{
 policy->freq_table = table;
 policy->cpuinfo.transition_latency = transition_latency;





 cpumask_setall(policy->cpus);
}
