
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int IS_ERR (int ) ;
 int arm_reg ;
 int clk_bulk_put (int ,int ) ;
 int clks ;
 int cpu_dev ;
 int cpufreq_unregister_driver (int *) ;
 int dev_pm_opp_free_cpufreq_table (int ,int *) ;
 int dev_pm_opp_of_remove_table (int ) ;
 scalar_t__ free_opp ;
 int freq_table ;
 int imx6q_cpufreq_driver ;
 int num_clks ;
 int pu_reg ;
 int regulator_put (int ) ;
 int soc_reg ;

__attribute__((used)) static int imx6q_cpufreq_remove(struct platform_device *pdev)
{
 cpufreq_unregister_driver(&imx6q_cpufreq_driver);
 dev_pm_opp_free_cpufreq_table(cpu_dev, &freq_table);
 if (free_opp)
  dev_pm_opp_of_remove_table(cpu_dev);
 regulator_put(arm_reg);
 if (!IS_ERR(pu_reg))
  regulator_put(pu_reg);
 regulator_put(soc_reg);

 clk_bulk_put(num_clks, clks);

 return 0;
}
