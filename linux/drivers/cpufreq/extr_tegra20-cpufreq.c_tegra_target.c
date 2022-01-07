
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra20_cpufreq {int pll_x_prepared; int pll_x_clk; int cpu_clk; int dev; int pll_p_clk; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {unsigned long frequency; } ;


 int WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,unsigned long) ;
 struct tegra20_cpufreq* cpufreq_get_driver_data () ;
 int dev_err (int ,char*,unsigned long) ;
 TYPE_1__* freq_table ;

__attribute__((used)) static int tegra_target(struct cpufreq_policy *policy, unsigned int index)
{
 struct tegra20_cpufreq *cpufreq = cpufreq_get_driver_data();
 unsigned long rate = freq_table[index].frequency;
 unsigned int ifreq = clk_get_rate(cpufreq->pll_p_clk) / 1000;
 int ret;





 if (rate == ifreq)
  return clk_set_parent(cpufreq->cpu_clk, cpufreq->pll_p_clk);

 ret = clk_set_rate(cpufreq->pll_x_clk, rate * 1000);

 if (ret)
  dev_err(cpufreq->dev, "Failed to change pll_x to %lu\n", rate);

 ret = clk_set_parent(cpufreq->cpu_clk, cpufreq->pll_x_clk);

 WARN_ON(ret);





 if (cpufreq->pll_x_prepared) {
  clk_disable_unprepare(cpufreq->pll_x_clk);
  cpufreq->pll_x_prepared = 0;
 }

 return ret;
}
