
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;


 int MSI_ADDR_SZ ;
 int PCIE_9XX_BRIDGE_MSIX_ADDR_BASE ;
 int PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT ;
 int PCIE_9XX_INT_EN0 ;
 int PCIE_BRIDGE_MSIX_ADDR_BASE ;
 int PCIE_BRIDGE_MSIX_ADDR_LIMIT ;
 int PCIE_INT_EN0 ;
 scalar_t__ cpu_is_xlp9xx () ;
 int nlm_read_pci_reg (int,int) ;
 int nlm_read_reg (int,int) ;
 int nlm_write_pci_reg (int,int,int) ;
 int nlm_write_reg (int,int,int) ;

__attribute__((used)) static void xlp_config_link_msix(uint64_t lnkbase, int lirq, uint64_t msixaddr)
{
 u32 val;

 val = nlm_read_reg(lnkbase, 0x2C);
 if ((val & 0x80000000U) == 0) {
  val |= 0x80000000U;
  nlm_write_reg(lnkbase, 0x2C, val);
 }

 if (cpu_is_xlp9xx()) {
  val = nlm_read_reg(lnkbase, PCIE_9XX_INT_EN0);
  if ((val & 0x200) == 0) {
   val |= 0x200;
   nlm_write_reg(lnkbase, PCIE_9XX_INT_EN0, val);
  }
 } else {
  val = nlm_read_reg(lnkbase, PCIE_INT_EN0);
  if ((val & 0x200) == 0) {
   val |= 0x200;
   nlm_write_reg(lnkbase, PCIE_INT_EN0, val);
  }
 }

 val = nlm_read_reg(lnkbase, 0x1);
 if ((val & 0x0400) == 0) {
  val |= 0x0400;
  nlm_write_reg(lnkbase, 0x1, val);
 }


 val = nlm_read_pci_reg(lnkbase, 0xf);
 val &= ~0x1fu;
 val |= (1 << 8) | lirq;
 nlm_write_pci_reg(lnkbase, 0xf, val);

 if (cpu_is_xlp9xx()) {

  nlm_write_reg(lnkbase, PCIE_9XX_BRIDGE_MSIX_ADDR_BASE,
    msixaddr >> 8);
  nlm_write_reg(lnkbase, PCIE_9XX_BRIDGE_MSIX_ADDR_LIMIT,
    (msixaddr + MSI_ADDR_SZ) >> 8);
 } else {

  nlm_write_reg(lnkbase, PCIE_BRIDGE_MSIX_ADDR_BASE,
    msixaddr >> 8);
  nlm_write_reg(lnkbase, PCIE_BRIDGE_MSIX_ADDR_LIMIT,
    (msixaddr + MSI_ADDR_SZ) >> 8);
 }
}
