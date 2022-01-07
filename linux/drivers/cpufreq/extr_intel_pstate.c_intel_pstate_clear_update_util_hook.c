
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudata {int update_util_set; } ;


 struct cpudata** all_cpu_data ;
 int cpufreq_remove_update_util_hook (unsigned int) ;
 int synchronize_rcu () ;

__attribute__((used)) static void intel_pstate_clear_update_util_hook(unsigned int cpu)
{
 struct cpudata *cpu_data = all_cpu_data[cpu];

 if (!cpu_data->update_util_set)
  return;

 cpufreq_remove_update_util_hook(cpu);
 cpu_data->update_util_set = 0;
 synchronize_rcu();
}
