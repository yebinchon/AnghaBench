
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int __platform_get_irq_byname (struct platform_device*,char const*) ;

int platform_get_irq_byname_optional(struct platform_device *dev,
         const char *name)
{
 return __platform_get_irq_byname(dev, name);
}
