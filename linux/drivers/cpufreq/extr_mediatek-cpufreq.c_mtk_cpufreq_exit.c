
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cpu_dvfs_info {int cpu_dev; } ;
struct cpufreq_policy {int freq_table; struct mtk_cpu_dvfs_info* driver_data; } ;


 int dev_pm_opp_free_cpufreq_table (int ,int *) ;

__attribute__((used)) static int mtk_cpufreq_exit(struct cpufreq_policy *policy)
{
 struct mtk_cpu_dvfs_info *info = policy->driver_data;

 dev_pm_opp_free_cpufreq_table(info->cpu_dev, &policy->freq_table);

 return 0;
}
