
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mtu2_device {scalar_t__ has_clockevent; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 scalar_t__ is_early_platform_device (struct platform_device*) ;
 int kfree (struct sh_mtu2_device*) ;
 struct sh_mtu2_device* kzalloc (int,int ) ;
 struct sh_mtu2_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_idle (int *) ;
 int pm_runtime_irq_safe (int *) ;
 int pm_runtime_set_active (int *) ;
 int sh_mtu2_setup (struct sh_mtu2_device*,struct platform_device*) ;

__attribute__((used)) static int sh_mtu2_probe(struct platform_device *pdev)
{
 struct sh_mtu2_device *mtu = platform_get_drvdata(pdev);
 int ret;

 if (!is_early_platform_device(pdev)) {
  pm_runtime_set_active(&pdev->dev);
  pm_runtime_enable(&pdev->dev);
 }

 if (mtu) {
  dev_info(&pdev->dev, "kept as earlytimer\n");
  goto out;
 }

 mtu = kzalloc(sizeof(*mtu), GFP_KERNEL);
 if (mtu == ((void*)0))
  return -ENOMEM;

 ret = sh_mtu2_setup(mtu, pdev);
 if (ret) {
  kfree(mtu);
  pm_runtime_idle(&pdev->dev);
  return ret;
 }
 if (is_early_platform_device(pdev))
  return 0;

 out:
 if (mtu->has_clockevent)
  pm_runtime_irq_safe(&pdev->dev);
 else
  pm_runtime_idle(&pdev->dev);

 return 0;
}
