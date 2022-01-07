
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct plat_ls1x_cpufreq {int clk_name; int osc_clk_name; int min_freq; int max_freq; } ;
struct ls1x_cpufreq {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int min_freq; int max_freq; struct clk* osc_clk; struct clk* pll_clk; struct clk* mux_clk; struct clk* clk; int * dev; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int __clk_get_name (struct clk*) ;
 struct clk* clk_get_parent (struct clk*) ;
 TYPE_1__* cpufreq ;
 int cpufreq_register_driver (int *) ;
 int cpufreq_register_notifier (int *,int ) ;
 int cpufreq_unregister_driver (int *) ;
 int dev_err (int *,char*,...) ;
 struct plat_ls1x_cpufreq* dev_get_platdata (int *) ;
 struct clk* devm_clk_get (int *,int) ;
 TYPE_1__* devm_kzalloc (int *,int,int ) ;
 int ls1x_cpufreq_driver ;
 int ls1x_cpufreq_notifier_block ;

__attribute__((used)) static int ls1x_cpufreq_probe(struct platform_device *pdev)
{
 struct plat_ls1x_cpufreq *pdata = dev_get_platdata(&pdev->dev);
 struct clk *clk;
 int ret;

 if (!pdata || !pdata->clk_name || !pdata->osc_clk_name) {
  dev_err(&pdev->dev, "platform data missing\n");
  return -EINVAL;
 }

 cpufreq =
     devm_kzalloc(&pdev->dev, sizeof(struct ls1x_cpufreq), GFP_KERNEL);
 if (!cpufreq)
  return -ENOMEM;

 cpufreq->dev = &pdev->dev;

 clk = devm_clk_get(&pdev->dev, pdata->clk_name);
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get %s clock\n",
   pdata->clk_name);
  return PTR_ERR(clk);
 }
 cpufreq->clk = clk;

 clk = clk_get_parent(clk);
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get parent of %s clock\n",
   __clk_get_name(cpufreq->clk));
  return PTR_ERR(clk);
 }
 cpufreq->mux_clk = clk;

 clk = clk_get_parent(clk);
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get parent of %s clock\n",
   __clk_get_name(cpufreq->mux_clk));
  return PTR_ERR(clk);
 }
 cpufreq->pll_clk = clk;

 clk = devm_clk_get(&pdev->dev, pdata->osc_clk_name);
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get %s clock\n",
   pdata->osc_clk_name);
  return PTR_ERR(clk);
 }
 cpufreq->osc_clk = clk;

 cpufreq->max_freq = pdata->max_freq;
 cpufreq->min_freq = pdata->min_freq;

 ret = cpufreq_register_driver(&ls1x_cpufreq_driver);
 if (ret) {
  dev_err(&pdev->dev,
   "failed to register CPUFreq driver: %d\n", ret);
  return ret;
 }

 ret = cpufreq_register_notifier(&ls1x_cpufreq_notifier_block,
     CPUFREQ_TRANSITION_NOTIFIER);

 if (ret) {
  dev_err(&pdev->dev,
   "failed to register CPUFreq notifier: %d\n",ret);
  cpufreq_unregister_driver(&ls1x_cpufreq_driver);
 }

 return ret;
}
