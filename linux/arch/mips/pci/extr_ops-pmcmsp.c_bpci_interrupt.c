
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_pci_regs {unsigned int if_status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PCI_BASE_REG ;
 int * pci_int_count ;

__attribute__((used)) static irqreturn_t bpci_interrupt(int irq, void *dev_id)
{
 struct msp_pci_regs *preg = (void *)PCI_BASE_REG;
 unsigned int stat = preg->if_status;
 preg->if_status = stat;

 return IRQ_HANDLED;
}
