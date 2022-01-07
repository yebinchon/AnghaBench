
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int mpic_unmask_irq (struct irq_data*) ;
 int pci_msi_unmask_irq (struct irq_data*) ;

__attribute__((used)) static void mpic_u3msi_unmask_irq(struct irq_data *data)
{
 mpic_unmask_irq(data);
 pci_msi_unmask_irq(data);
}
