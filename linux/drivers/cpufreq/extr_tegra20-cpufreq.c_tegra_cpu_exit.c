
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_cpufreq {int cpu_clk; } ;
struct cpufreq_policy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra20_cpufreq* cpufreq_get_driver_data () ;

__attribute__((used)) static int tegra_cpu_exit(struct cpufreq_policy *policy)
{
 struct tegra20_cpufreq *cpufreq = cpufreq_get_driver_data();

 clk_disable_unprepare(cpufreq->cpu_clk);
 return 0;
}
