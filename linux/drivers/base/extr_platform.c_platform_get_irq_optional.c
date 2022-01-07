
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int __platform_get_irq (struct platform_device*,unsigned int) ;

int platform_get_irq_optional(struct platform_device *dev, unsigned int num)
{
 return __platform_get_irq(dev, num);
}
