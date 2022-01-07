
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_MAX_ISA_IRQS ;
 int acpi_irq_pci_sharing_penalty (int) ;
 int* acpi_isa_irq_penalty ;
 int sci_irq ;
 scalar_t__ sci_penalty ;

__attribute__((used)) static int acpi_irq_get_penalty(int irq)
{
 int penalty = 0;

 if (irq == sci_irq)
  penalty += sci_penalty;

 if (irq < ACPI_MAX_ISA_IRQS)
  return penalty + acpi_isa_irq_penalty[irq];

 return penalty + acpi_irq_pci_sharing_penalty(irq);
}
