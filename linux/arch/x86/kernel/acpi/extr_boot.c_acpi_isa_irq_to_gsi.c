
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ INVALID_ACPI_IRQ ;
 scalar_t__* isa_irq_to_gsi ;
 unsigned int nr_legacy_irqs () ;

int acpi_isa_irq_to_gsi(unsigned isa_irq, u32 *gsi)
{
 if (isa_irq < nr_legacy_irqs() &&
     isa_irq_to_gsi[isa_irq] != INVALID_ACPI_IRQ) {
  *gsi = isa_irq_to_gsi[isa_irq];
  return 0;
 }

 return -1;
}
