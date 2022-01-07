
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_cpufreq {int pll_x_prepared; int pll_x_clk; int pll_p_clk; int cpu_clk; } ;
struct cpufreq_policy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_parent (int ,int ) ;
 struct tegra20_cpufreq* cpufreq_get_driver_data () ;

__attribute__((used)) static int tegra_target_intermediate(struct cpufreq_policy *policy,
         unsigned int index)
{
 struct tegra20_cpufreq *cpufreq = cpufreq_get_driver_data();
 int ret;
 clk_prepare_enable(cpufreq->pll_x_clk);

 ret = clk_set_parent(cpufreq->cpu_clk, cpufreq->pll_p_clk);
 if (ret)
  clk_disable_unprepare(cpufreq->pll_x_clk);
 else
  cpufreq->pll_x_prepared = 1;

 return ret;
}
