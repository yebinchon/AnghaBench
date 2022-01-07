
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct ar2315_pci_ctrl {int dummy; } ;


 int AR2315_PCI_IMR ;
 int BIT (int ) ;
 int ar2315_pci_reg_mask (struct ar2315_pci_ctrl*,int ,int ,int ) ;
 struct ar2315_pci_ctrl* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ar2315_pci_irq_unmask(struct irq_data *d)
{
 struct ar2315_pci_ctrl *apc = irq_data_get_irq_chip_data(d);

 ar2315_pci_reg_mask(apc, AR2315_PCI_IMR, 0, BIT(d->hwirq));
}
