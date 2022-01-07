
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int target_intermediate; int get_intermediate; int target_index; struct tegra20_cpufreq* driver_data; int suspend; int verify; int flags; int exit; int init; int attr; int get; } ;
struct tegra20_cpufreq {void* cpu_clk; void* pll_x_clk; void* pll_p_clk; TYPE_1__ driver; int * dev; } ;
struct platform_device {int dev; } ;


 int CPUFREQ_NAME_LEN ;
 int CPUFREQ_NEED_INITIAL_FREQ_CHECK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* clk_get_sys (int *,char*) ;
 int clk_put (void*) ;
 int cpufreq_generic_attr ;
 int cpufreq_generic_frequency_table_verify ;
 int cpufreq_generic_get ;
 int cpufreq_generic_suspend ;
 int cpufreq_register_driver (TYPE_1__*) ;
 struct tegra20_cpufreq* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra20_cpufreq*) ;
 int snprintf (int ,int ,char*) ;
 int tegra_cpu_exit ;
 int tegra_cpu_init ;
 int tegra_get_intermediate ;
 int tegra_target ;
 int tegra_target_intermediate ;

__attribute__((used)) static int tegra20_cpufreq_probe(struct platform_device *pdev)
{
 struct tegra20_cpufreq *cpufreq;
 int err;

 cpufreq = devm_kzalloc(&pdev->dev, sizeof(*cpufreq), GFP_KERNEL);
 if (!cpufreq)
  return -ENOMEM;

 cpufreq->cpu_clk = clk_get_sys(((void*)0), "cclk");
 if (IS_ERR(cpufreq->cpu_clk))
  return PTR_ERR(cpufreq->cpu_clk);

 cpufreq->pll_x_clk = clk_get_sys(((void*)0), "pll_x");
 if (IS_ERR(cpufreq->pll_x_clk)) {
  err = PTR_ERR(cpufreq->pll_x_clk);
  goto put_cpu;
 }

 cpufreq->pll_p_clk = clk_get_sys(((void*)0), "pll_p");
 if (IS_ERR(cpufreq->pll_p_clk)) {
  err = PTR_ERR(cpufreq->pll_p_clk);
  goto put_pll_x;
 }

 cpufreq->dev = &pdev->dev;
 cpufreq->driver.get = cpufreq_generic_get;
 cpufreq->driver.attr = cpufreq_generic_attr;
 cpufreq->driver.init = tegra_cpu_init;
 cpufreq->driver.exit = tegra_cpu_exit;
 cpufreq->driver.flags = CPUFREQ_NEED_INITIAL_FREQ_CHECK;
 cpufreq->driver.verify = cpufreq_generic_frequency_table_verify;
 cpufreq->driver.suspend = cpufreq_generic_suspend;
 cpufreq->driver.driver_data = cpufreq;
 cpufreq->driver.target_index = tegra_target;
 cpufreq->driver.get_intermediate = tegra_get_intermediate;
 cpufreq->driver.target_intermediate = tegra_target_intermediate;
 snprintf(cpufreq->driver.name, CPUFREQ_NAME_LEN, "tegra");

 err = cpufreq_register_driver(&cpufreq->driver);
 if (err)
  goto put_pll_p;

 platform_set_drvdata(pdev, cpufreq);

 return 0;

put_pll_p:
 clk_put(cpufreq->pll_p_clk);
put_pll_x:
 clk_put(cpufreq->pll_x_clk);
put_cpu:
 clk_put(cpufreq->cpu_clk);

 return err;
}
