
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int CONFIG_OF_IRQ ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ENABLED (int ) ;
 int of_irq_get_byname (scalar_t__,char const*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char const*) ;

__attribute__((used)) static int __platform_get_irq_byname(struct platform_device *dev,
         const char *name)
{
 struct resource *r;

 if (IS_ENABLED(CONFIG_OF_IRQ) && dev->dev.of_node) {
  int ret;

  ret = of_irq_get_byname(dev->dev.of_node, name);
  if (ret > 0 || ret == -EPROBE_DEFER)
   return ret;
 }

 r = platform_get_resource_byname(dev, IORESOURCE_IRQ, name);
 if (r)
  return r->start;

 return -ENXIO;
}
