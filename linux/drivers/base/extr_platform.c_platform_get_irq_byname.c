
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EPROBE_DEFER ;
 int __platform_get_irq_byname (struct platform_device*,char const*) ;
 int dev_err (int *,char*,char const*) ;

int platform_get_irq_byname(struct platform_device *dev, const char *name)
{
 int ret;

 ret = __platform_get_irq_byname(dev, name);
 if (ret < 0 && ret != -EPROBE_DEFER)
  dev_err(&dev->dev, "IRQ %s not found\n", name);

 return ret;
}
