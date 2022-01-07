
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subsys_interface {int dummy; } ;
struct device {unsigned int id; } ;
struct cpufreq_policy {int real_cpus; } ;
struct TYPE_2__ {int (* exit ) (struct cpufreq_policy*) ;scalar_t__ offline; } ;


 scalar_t__ cpu_online (unsigned int) ;
 int cpufreq_cpu_data ;
 TYPE_1__* cpufreq_driver ;
 int cpufreq_offline (unsigned int) ;
 int cpufreq_policy_free (struct cpufreq_policy*) ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 scalar_t__ cpumask_empty (int ) ;
 struct cpufreq_policy* per_cpu (int ,unsigned int) ;
 int remove_cpu_dev_symlink (struct cpufreq_policy*,struct device*) ;
 int stub1 (struct cpufreq_policy*) ;

__attribute__((used)) static void cpufreq_remove_dev(struct device *dev, struct subsys_interface *sif)
{
 unsigned int cpu = dev->id;
 struct cpufreq_policy *policy = per_cpu(cpufreq_cpu_data, cpu);

 if (!policy)
  return;

 if (cpu_online(cpu))
  cpufreq_offline(cpu);

 cpumask_clear_cpu(cpu, policy->real_cpus);
 remove_cpu_dev_symlink(policy, dev);

 if (cpumask_empty(policy->real_cpus)) {

  if (cpufreq_driver->offline)
   cpufreq_driver->exit(policy);

  cpufreq_policy_free(policy);
 }
}
