
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_osd_handler ;
struct TYPE_2__ {scalar_t__ sci_interrupt; } ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int INVALID_ACPI_IRQ ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_irq ;
 int * acpi_irq_handler ;
 int acpi_sci_irq ;
 int acpi_sci_irq_valid () ;
 int free_irq (int ,int ) ;

acpi_status acpi_os_remove_interrupt_handler(u32 gsi, acpi_osd_handler handler)
{
 if (gsi != acpi_gbl_FADT.sci_interrupt || !acpi_sci_irq_valid())
  return AE_BAD_PARAMETER;

 free_irq(acpi_sci_irq, acpi_irq);
 acpi_irq_handler = ((void*)0);
 acpi_sci_irq = INVALID_ACPI_IRQ;

 return AE_OK;
}
