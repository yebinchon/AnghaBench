
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cpu_dvfs_info {int cpus; int inter_clk; int cpu_clk; int sram_reg; int proc_reg; } ;


 int IS_ERR (int ) ;
 int clk_put (int ) ;
 int dev_pm_opp_of_cpumask_remove_table (int *) ;
 int regulator_put (int ) ;

__attribute__((used)) static void mtk_cpu_dvfs_info_release(struct mtk_cpu_dvfs_info *info)
{
 if (!IS_ERR(info->proc_reg))
  regulator_put(info->proc_reg);
 if (!IS_ERR(info->sram_reg))
  regulator_put(info->sram_reg);
 if (!IS_ERR(info->cpu_clk))
  clk_put(info->cpu_clk);
 if (!IS_ERR(info->inter_clk))
  clk_put(info->inter_clk);

 dev_pm_opp_of_cpumask_remove_table(&info->cpus);
}
