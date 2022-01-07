
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int mpic_unmask_irq (struct irq_data*) ;
 int pci_msi_unmask_irq (struct irq_data*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void mpic_pasemi_msi_unmask_irq(struct irq_data *data)
{
 pr_debug("mpic_pasemi_msi_unmask_irq %d\n", data->irq);
 mpic_unmask_irq(data);
 pci_msi_unmask_irq(data);
}
