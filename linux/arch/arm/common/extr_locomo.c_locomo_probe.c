
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int __locomo_probe (int *,struct resource*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int locomo_probe(struct platform_device *dev)
{
 struct resource *mem;
 int irq;

 mem = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!mem)
  return -EINVAL;
 irq = platform_get_irq(dev, 0);
 if (irq < 0)
  return -ENXIO;

 return __locomo_probe(&dev->dev, mem, irq);
}
