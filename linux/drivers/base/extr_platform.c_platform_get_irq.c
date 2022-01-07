
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EPROBE_DEFER ;
 int __platform_get_irq (struct platform_device*,unsigned int) ;
 int dev_err (int *,char*,unsigned int) ;

int platform_get_irq(struct platform_device *dev, unsigned int num)
{
 int ret;

 ret = __platform_get_irq(dev, num);
 if (ret < 0 && ret != -EPROBE_DEFER)
  dev_err(&dev->dev, "IRQ index %u not found\n", num);

 return ret;
}
