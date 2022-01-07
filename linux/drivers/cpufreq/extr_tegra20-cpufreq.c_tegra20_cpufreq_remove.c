
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_cpufreq {int cpu_clk; int pll_x_clk; int pll_p_clk; int driver; } ;
struct platform_device {int dummy; } ;


 int clk_put (int ) ;
 int cpufreq_unregister_driver (int *) ;
 struct tegra20_cpufreq* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra20_cpufreq_remove(struct platform_device *pdev)
{
 struct tegra20_cpufreq *cpufreq = platform_get_drvdata(pdev);

 cpufreq_unregister_driver(&cpufreq->driver);

 clk_put(cpufreq->pll_p_clk);
 clk_put(cpufreq->pll_x_clk);
 clk_put(cpufreq->cpu_clk);

 return 0;
}
