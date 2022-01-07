
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_data {int cpu_dev; int clk; } ;
struct cpufreq_policy {int freq_table; struct scpi_data* driver_data; } ;


 int clk_put (int ) ;
 int dev_pm_opp_free_cpufreq_table (int ,int *) ;
 int dev_pm_opp_remove_all_dynamic (int ) ;
 int kfree (struct scpi_data*) ;

__attribute__((used)) static int scpi_cpufreq_exit(struct cpufreq_policy *policy)
{
 struct scpi_data *priv = policy->driver_data;

 clk_put(priv->clk);
 dev_pm_opp_free_cpufreq_table(priv->cpu_dev, &policy->freq_table);
 dev_pm_opp_remove_all_dynamic(priv->cpu_dev);
 kfree(priv);

 return 0;
}
