
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 int __sa1111_probe (int *,struct resource*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int sa1111_probe(struct platform_device *pdev)
{
 struct resource *mem;
 int irq;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem)
  return -EINVAL;
 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 return __sa1111_probe(&pdev->dev, mem, irq);
}
