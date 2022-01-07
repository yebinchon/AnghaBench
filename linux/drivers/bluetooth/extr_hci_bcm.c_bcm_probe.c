
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bcm_device {int list; int name; int irq; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm_acpi_probe (struct bcm_device*) ;
 int bcm_device_list ;
 int bcm_device_lock ;
 int bcm_get_resources (struct bcm_device*) ;
 int bcm_gpio_set_power (struct bcm_device*,int) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 struct bcm_device* devm_kzalloc (int *,int,int ) ;
 scalar_t__ has_acpi_companion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm_device*) ;

__attribute__((used)) static int bcm_probe(struct platform_device *pdev)
{
 struct bcm_device *dev;
 int ret;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->dev = &pdev->dev;
 dev->irq = platform_get_irq(pdev, 0);

 if (has_acpi_companion(&pdev->dev)) {
  ret = bcm_acpi_probe(dev);
  if (ret)
   return ret;
 }

 ret = bcm_get_resources(dev);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, dev);

 dev_info(&pdev->dev, "%s device registered.\n", dev->name);


 mutex_lock(&bcm_device_lock);
 list_add_tail(&dev->list, &bcm_device_list);
 mutex_unlock(&bcm_device_lock);

 ret = bcm_gpio_set_power(dev, 0);
 if (ret)
  dev_err(&pdev->dev, "Failed to power down\n");

 return 0;
}
