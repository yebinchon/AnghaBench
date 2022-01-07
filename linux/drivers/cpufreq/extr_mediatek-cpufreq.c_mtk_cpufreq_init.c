
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cpu_dvfs_info {int cpu_clk; int cpus; int cpu_dev; } ;
struct cpufreq_policy {int cpus; int clk; struct mtk_cpu_dvfs_info* driver_data; struct cpufreq_frequency_table* freq_table; int cpu; } ;
struct cpufreq_frequency_table {int dummy; } ;


 int EINVAL ;
 int cpumask_copy (int ,int *) ;
 int dev_pm_opp_init_cpufreq_table (int ,struct cpufreq_frequency_table**) ;
 int dev_pm_opp_of_register_em (int ) ;
 struct mtk_cpu_dvfs_info* mtk_cpu_dvfs_info_lookup (int ) ;
 int pr_err (char*,int ,...) ;

__attribute__((used)) static int mtk_cpufreq_init(struct cpufreq_policy *policy)
{
 struct mtk_cpu_dvfs_info *info;
 struct cpufreq_frequency_table *freq_table;
 int ret;

 info = mtk_cpu_dvfs_info_lookup(policy->cpu);
 if (!info) {
  pr_err("dvfs info for cpu%d is not initialized.\n",
         policy->cpu);
  return -EINVAL;
 }

 ret = dev_pm_opp_init_cpufreq_table(info->cpu_dev, &freq_table);
 if (ret) {
  pr_err("failed to init cpufreq table for cpu%d: %d\n",
         policy->cpu, ret);
  return ret;
 }

 cpumask_copy(policy->cpus, &info->cpus);
 policy->freq_table = freq_table;
 policy->driver_data = info;
 policy->clk = info->cpu_clk;

 dev_pm_opp_of_register_em(policy->cpus);

 return 0;
}
