
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; int name; } ;


 int dev_pm_domain_set (int *,int *) ;
 int omap_device_pm_domain ;
 int platform_device_add (struct platform_device*) ;
 int pr_debug (char*,int ) ;

int omap_device_register(struct platform_device *pdev)
{
 pr_debug("omap_device: %s: registering\n", pdev->name);

 dev_pm_domain_set(&pdev->dev, &omap_device_pm_domain);
 return platform_device_add(pdev);
}
