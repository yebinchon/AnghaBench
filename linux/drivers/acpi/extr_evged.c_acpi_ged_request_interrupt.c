
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {unsigned int start; int flags; } ;
struct device {int dummy; } ;
struct acpi_resource_irq {unsigned int* interrupts; } ;
struct acpi_resource_extended_irq {unsigned int* interrupts; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_irq irq; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;
struct acpi_ged_event {unsigned int gsi; unsigned int irq; int node; int handle; struct device* dev; } ;
struct acpi_ged_device {int event_list; struct device* dev; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 scalar_t__ ACPI_RESOURCE_TYPE_END_TAG ;
 scalar_t__ ACPI_RESOURCE_TYPE_IRQ ;
 int AE_ERROR ;
 int AE_OK ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ_SHAREABLE ;
 unsigned int IRQF_ONESHOT ;
 unsigned int IRQF_SHARED ;
 int acpi_dev_resource_interrupt (struct acpi_resource*,int ,struct resource*) ;
 int acpi_ged_irq_handler ;
 int acpi_get_handle (int ,char*,int *) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct acpi_ged_event* devm_kzalloc (struct device*,int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ request_threaded_irq (unsigned int,int *,int ,unsigned int,char*,struct acpi_ged_event*) ;

__attribute__((used)) static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
           void *context)
{
 struct acpi_ged_event *event;
 unsigned int irq;
 unsigned int gsi;
 unsigned int irqflags = IRQF_ONESHOT;
 struct acpi_ged_device *geddev = context;
 struct device *dev = geddev->dev;
 acpi_handle handle = ACPI_HANDLE(dev);
 acpi_handle evt_handle;
 struct resource r;
 struct acpi_resource_irq *p = &ares->data.irq;
 struct acpi_resource_extended_irq *pext = &ares->data.extended_irq;

 if (ares->type == ACPI_RESOURCE_TYPE_END_TAG)
  return AE_OK;

 if (!acpi_dev_resource_interrupt(ares, 0, &r)) {
  dev_err(dev, "unable to parse IRQ resource\n");
  return AE_ERROR;
 }
 if (ares->type == ACPI_RESOURCE_TYPE_IRQ)
  gsi = p->interrupts[0];
 else
  gsi = pext->interrupts[0];

 irq = r.start;

 if (ACPI_FAILURE(acpi_get_handle(handle, "_EVT", &evt_handle))) {
  dev_err(dev, "cannot locate _EVT method\n");
  return AE_ERROR;
 }

 event = devm_kzalloc(dev, sizeof(*event), GFP_KERNEL);
 if (!event)
  return AE_ERROR;

 event->gsi = gsi;
 event->dev = dev;
 event->irq = irq;
 event->handle = evt_handle;

 if (r.flags & IORESOURCE_IRQ_SHAREABLE)
  irqflags |= IRQF_SHARED;

 if (request_threaded_irq(irq, ((void*)0), acpi_ged_irq_handler,
     irqflags, "ACPI:Ged", event)) {
  dev_err(dev, "failed to setup event handler for irq %u\n", irq);
  return AE_ERROR;
 }

 dev_dbg(dev, "GED listening GSI %u @ IRQ %u\n", gsi, irq);
 list_add_tail(&event->node, &geddev->event_list);
 return AE_OK;
}
