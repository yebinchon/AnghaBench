
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_PCIE_LINK0_IRQ ;
 int PIC_PCIE_LINK1_IRQ ;
 int PIC_PCIE_LINK2_IRQ ;
 int PIC_PCIE_LINK3_IRQ ;
 int PIC_PCIE_XLSB0_LINK2_IRQ ;
 int PIC_PCIE_XLSB0_LINK3_IRQ ;
 int WARN (int,char*,int) ;
 int nlm_chip_is_xls_b () ;

__attribute__((used)) static int nlm_pci_link_to_irq(int link)
{
 switch (link) {
 case 0:
  return PIC_PCIE_LINK0_IRQ;
 case 1:
  return PIC_PCIE_LINK1_IRQ;
 case 2:
  if (nlm_chip_is_xls_b())
   return PIC_PCIE_XLSB0_LINK2_IRQ;
  else
   return PIC_PCIE_LINK2_IRQ;
 case 3:
  if (nlm_chip_is_xls_b())
   return PIC_PCIE_XLSB0_LINK3_IRQ;
  else
   return PIC_PCIE_LINK3_IRQ;
 }
 WARN(1, "Unexpected link %d\n", link);
 return 0;
}
