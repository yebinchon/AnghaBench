
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;
struct ar2315_pci_ctrl {int dummy; } ;


 int AR2315_PCI_IMR ;
 int AR2315_PCI_ISR ;
 int BIT (int ) ;
 int ar2315_pci_reg_mask (struct ar2315_pci_ctrl*,int ,int ,int ) ;
 int ar2315_pci_reg_write (struct ar2315_pci_ctrl*,int ,int ) ;
 struct ar2315_pci_ctrl* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ar2315_pci_irq_mask_ack(struct irq_data *d)
{
 struct ar2315_pci_ctrl *apc = irq_data_get_irq_chip_data(d);
 u32 m = BIT(d->hwirq);

 ar2315_pci_reg_mask(apc, AR2315_PCI_IMR, m, 0);
 ar2315_pci_reg_write(apc, AR2315_PCI_ISR, m);
}
