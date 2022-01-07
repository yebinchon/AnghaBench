
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_PCIE_LINK_MSI_IRQ (int) ;
 int PIC_PCIE_MSIX_IRQ (int) ;
 scalar_t__ cpu_is_xlp9xx () ;
 int xlp9xx_irq_to_irt (int) ;
 int xlp_irq_to_irt (int) ;

int nlm_irq_to_irt(int irq)
{

 if (irq >= PIC_PCIE_LINK_MSI_IRQ(0) && irq <= PIC_PCIE_LINK_MSI_IRQ(3))
  return -2;
 if (irq >= PIC_PCIE_MSIX_IRQ(0) && irq <= PIC_PCIE_MSIX_IRQ(3))
  return -2;

 if (cpu_is_xlp9xx())
  return xlp9xx_irq_to_irt(irq);
 else
  return xlp_irq_to_irt(irq);
}
