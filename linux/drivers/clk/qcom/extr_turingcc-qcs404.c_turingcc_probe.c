
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_err (int *,char*) ;
 int pm_clk_add (int *,int *) ;
 int pm_clk_create (int *) ;
 int pm_clk_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int qcom_cc_probe (struct platform_device*,int *) ;
 int turingcc_desc ;

__attribute__((used)) static int turingcc_probe(struct platform_device *pdev)
{
 int ret;

 pm_runtime_enable(&pdev->dev);
 ret = pm_clk_create(&pdev->dev);
 if (ret)
  goto disable_pm_runtime;

 ret = pm_clk_add(&pdev->dev, ((void*)0));
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to acquire iface clock\n");
  goto destroy_pm_clk;
 }

 ret = qcom_cc_probe(pdev, &turingcc_desc);
 if (ret < 0)
  goto destroy_pm_clk;

 return 0;

destroy_pm_clk:
 pm_clk_destroy(&pdev->dev);

disable_pm_runtime:
 pm_runtime_disable(&pdev->dev);

 return ret;
}
