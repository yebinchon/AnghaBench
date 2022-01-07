
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; } ;
struct acpi_resource_irq {int interrupt_count; int shareable; int polarity; int triggering; int * interrupts; } ;
struct acpi_resource_extended_irq {int interrupt_count; int shareable; int polarity; int triggering; int * interrupts; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_irq irq; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;




 int acpi_dev_get_irqresource (struct resource*,int ,int ,int ,int ,int) ;
 int acpi_dev_irqresource_disabled (struct resource*,int ) ;
 int is_gsi (struct acpi_resource_extended_irq*) ;

bool acpi_dev_resource_interrupt(struct acpi_resource *ares, int index,
     struct resource *res)
{
 struct acpi_resource_irq *irq;
 struct acpi_resource_extended_irq *ext_irq;

 switch (ares->type) {
 case 128:




  irq = &ares->data.irq;
  if (index >= irq->interrupt_count) {
   acpi_dev_irqresource_disabled(res, 0);
   return 0;
  }
  acpi_dev_get_irqresource(res, irq->interrupts[index],
      irq->triggering, irq->polarity,
      irq->shareable, 1);
  break;
 case 129:
  ext_irq = &ares->data.extended_irq;
  if (index >= ext_irq->interrupt_count) {
   acpi_dev_irqresource_disabled(res, 0);
   return 0;
  }
  if (is_gsi(ext_irq))
   acpi_dev_get_irqresource(res, ext_irq->interrupts[index],
      ext_irq->triggering, ext_irq->polarity,
      ext_irq->shareable, 0);
  else
   acpi_dev_irqresource_disabled(res, 0);
  break;
 default:
  res->flags = 0;
  return 0;
 }

 return 1;
}
