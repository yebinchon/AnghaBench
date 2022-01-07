
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;
struct ar2315_pci_ctrl {int domain; } ;


 int AR2315_PCI_IMR ;
 int AR2315_PCI_ISR ;
 int __ffs (int) ;
 int ar2315_pci_reg_read (struct ar2315_pci_ctrl*,int ) ;
 int generic_handle_irq (unsigned int) ;
 struct ar2315_pci_ctrl* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_find_mapping (int ,int ) ;
 int spurious_interrupt () ;

__attribute__((used)) static void ar2315_pci_irq_handler(struct irq_desc *desc)
{
 struct ar2315_pci_ctrl *apc = irq_desc_get_handler_data(desc);
 u32 pending = ar2315_pci_reg_read(apc, AR2315_PCI_ISR) &
        ar2315_pci_reg_read(apc, AR2315_PCI_IMR);
 unsigned pci_irq = 0;

 if (pending)
  pci_irq = irq_find_mapping(apc->domain, __ffs(pending));

 if (pci_irq)
  generic_handle_irq(pci_irq);
 else
  spurious_interrupt();
}
