
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eps_cpu_data {TYPE_1__* freq_table; } ;
struct cpufreq_policy {unsigned int cpu; } ;
struct TYPE_2__ {int driver_data; } ;


 int ENODEV ;
 struct eps_cpu_data** eps_cpu ;
 int eps_set_state (struct eps_cpu_data*,struct cpufreq_policy*,unsigned int) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int eps_target(struct cpufreq_policy *policy, unsigned int index)
{
 struct eps_cpu_data *centaur;
 unsigned int cpu = policy->cpu;
 unsigned int dest_state;
 int ret;

 if (unlikely(eps_cpu[cpu] == ((void*)0)))
  return -ENODEV;
 centaur = eps_cpu[cpu];


 dest_state = centaur->freq_table[index].driver_data & 0xffff;
 ret = eps_set_state(centaur, policy, dest_state);
 if (ret)
  pr_err("Timeout!\n");
 return ret;
}
