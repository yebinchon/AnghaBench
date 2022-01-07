
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int flags; int start; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct TYPE_5__ {unsigned int num_irqs; int* irqs; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__ archdata; } ;
struct irq_data {int dummy; } ;


 int ACPI_COMPANION (TYPE_2__*) ;
 int ACPI_HANDLE (TYPE_2__*) ;
 int CONFIG_OF_IRQ ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int IORESOURCE_BITS ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ENABLED (int ) ;
 int acpi_dev_gpio_irq_get (int ,unsigned int) ;
 int acpi_irq_get (int ,unsigned int,struct resource*) ;
 scalar_t__ has_acpi_companion (TYPE_2__*) ;
 struct irq_data* irq_get_irq_data (int) ;
 int irqd_set_trigger_type (struct irq_data*,int) ;
 int of_irq_get (scalar_t__,unsigned int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,unsigned int) ;

__attribute__((used)) static int __platform_get_irq(struct platform_device *dev, unsigned int num)
{






 struct resource *r;
 if (IS_ENABLED(CONFIG_OF_IRQ) && dev->dev.of_node) {
  int ret;

  ret = of_irq_get(dev->dev.of_node, num);
  if (ret > 0 || ret == -EPROBE_DEFER)
   return ret;
 }

 r = platform_get_resource(dev, IORESOURCE_IRQ, num);
 if (has_acpi_companion(&dev->dev)) {
  if (r && r->flags & IORESOURCE_DISABLED) {
   int ret;

   ret = acpi_irq_get(ACPI_HANDLE(&dev->dev), num, r);
   if (ret)
    return ret;
  }
 }







 if (r && r->flags & IORESOURCE_BITS) {
  struct irq_data *irqd;

  irqd = irq_get_irq_data(r->start);
  if (!irqd)
   return -ENXIO;
  irqd_set_trigger_type(irqd, r->flags & IORESOURCE_BITS);
 }

 if (r)
  return r->start;
 if (num == 0 && has_acpi_companion(&dev->dev)) {
  int ret = acpi_dev_gpio_irq_get(ACPI_COMPANION(&dev->dev), num);


  if (ret >= 0 || ret == -EPROBE_DEFER)
   return ret;
 }

 return -ENXIO;

}
