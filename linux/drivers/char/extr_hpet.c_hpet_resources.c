
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpet_data {size_t hd_nirqs; int* hd_irq; void* hd_address; int hd_phys_address; } ;
struct acpi_resource_fixed_memory32 {int address; } ;
struct acpi_resource_extended_irq {int interrupt_count; int polarity; int triggering; int * interrupts; } ;
struct TYPE_3__ {int address_length; int minimum; } ;
struct acpi_resource_address64 {TYPE_1__ address; } ;
struct TYPE_4__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_fixed_memory32 fixed_memory32; } ;
struct acpi_resource {scalar_t__ type; TYPE_2__ data; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_RESOURCE_TYPE_EXTENDED_IRQ ;
 scalar_t__ ACPI_RESOURCE_TYPE_FIXED_MEMORY32 ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_ALREADY_EXISTS ;
 int AE_ERROR ;
 int AE_OK ;
 size_t HPET_MAX_TIMERS ;
 int HPET_RANGE_SIZE ;
 int acpi_register_gsi (int *,int ,int ,int ) ;
 int acpi_resource_to_address64 (struct acpi_resource*,struct acpi_resource_address64*) ;
 scalar_t__ hpet_is_known (struct hpet_data*) ;
 void* ioremap (int ,int ) ;
 int iounmap (void*) ;

__attribute__((used)) static acpi_status hpet_resources(struct acpi_resource *res, void *data)
{
 struct hpet_data *hdp;
 acpi_status status;
 struct acpi_resource_address64 addr;

 hdp = data;

 status = acpi_resource_to_address64(res, &addr);

 if (ACPI_SUCCESS(status)) {
  hdp->hd_phys_address = addr.address.minimum;
  hdp->hd_address = ioremap(addr.address.minimum, addr.address.address_length);
  if (!hdp->hd_address)
   return AE_ERROR;

  if (hpet_is_known(hdp)) {
   iounmap(hdp->hd_address);
   return AE_ALREADY_EXISTS;
  }
 } else if (res->type == ACPI_RESOURCE_TYPE_FIXED_MEMORY32) {
  struct acpi_resource_fixed_memory32 *fixmem32;

  fixmem32 = &res->data.fixed_memory32;

  hdp->hd_phys_address = fixmem32->address;
  hdp->hd_address = ioremap(fixmem32->address,
      HPET_RANGE_SIZE);

  if (hpet_is_known(hdp)) {
   iounmap(hdp->hd_address);
   return AE_ALREADY_EXISTS;
  }
 } else if (res->type == ACPI_RESOURCE_TYPE_EXTENDED_IRQ) {
  struct acpi_resource_extended_irq *irqp;
  int i, irq;

  irqp = &res->data.extended_irq;

  for (i = 0; i < irqp->interrupt_count; i++) {
   if (hdp->hd_nirqs >= HPET_MAX_TIMERS)
    break;

   irq = acpi_register_gsi(((void*)0), irqp->interrupts[i],
          irqp->triggering, irqp->polarity);
   if (irq < 0)
    return AE_ERROR;

   hdp->hd_irq[hdp->hd_nirqs] = irq;
   hdp->hd_nirqs++;
  }
 }

 return AE_OK;
}
