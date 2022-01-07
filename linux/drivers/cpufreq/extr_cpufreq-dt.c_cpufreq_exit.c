
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int opp_table; scalar_t__ reg_name; scalar_t__ have_static_opps; int cpu_dev; } ;
struct cpufreq_policy {int clk; int related_cpus; int freq_table; struct private_data* driver_data; } ;


 int clk_put (int ) ;
 int dev_pm_opp_free_cpufreq_table (int ,int *) ;
 int dev_pm_opp_of_cpumask_remove_table (int ) ;
 int dev_pm_opp_put_regulators (int ) ;
 int kfree (struct private_data*) ;

__attribute__((used)) static int cpufreq_exit(struct cpufreq_policy *policy)
{
 struct private_data *priv = policy->driver_data;

 dev_pm_opp_free_cpufreq_table(priv->cpu_dev, &policy->freq_table);
 if (priv->have_static_opps)
  dev_pm_opp_of_cpumask_remove_table(policy->related_cpus);
 if (priv->reg_name)
  dev_pm_opp_put_regulators(priv->opp_table);

 clk_put(policy->clk);
 kfree(priv);

 return 0;
}
