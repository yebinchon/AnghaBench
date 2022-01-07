
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar2315_pci_ctrl {int irq; int domain; int irq_ext; } ;


 int AR2315_PCI_IER ;
 int AR2315_PCI_IER_ENABLE ;
 int AR2315_PCI_IMR ;
 int AR2315_PCI_INT_ABORT ;
 int AR2315_PCI_INT_EXT ;
 int AR2315_PCI_IRQ_EXT ;
 int AR2315_PCI_ISR ;
 int ar2315_pci_irq_handler ;
 int ar2315_pci_reg_mask (struct ar2315_pci_ctrl*,int ,int,int) ;
 int ar2315_pci_reg_write (struct ar2315_pci_ctrl*,int ,int) ;
 int irq_create_mapping (int ,int ) ;
 int irq_set_chained_handler_and_data (int ,int ,struct ar2315_pci_ctrl*) ;

__attribute__((used)) static void ar2315_pci_irq_init(struct ar2315_pci_ctrl *apc)
{
 ar2315_pci_reg_mask(apc, AR2315_PCI_IER, AR2315_PCI_IER_ENABLE, 0);
 ar2315_pci_reg_mask(apc, AR2315_PCI_IMR, (AR2315_PCI_INT_ABORT |
       AR2315_PCI_INT_EXT), 0);

 apc->irq_ext = irq_create_mapping(apc->domain, AR2315_PCI_IRQ_EXT);

 irq_set_chained_handler_and_data(apc->irq, ar2315_pci_irq_handler,
      apc);



 ar2315_pci_reg_write(apc, AR2315_PCI_ISR, AR2315_PCI_INT_ABORT |
        AR2315_PCI_INT_EXT);
 ar2315_pci_reg_mask(apc, AR2315_PCI_IER, 0, AR2315_PCI_IER_ENABLE);
}
