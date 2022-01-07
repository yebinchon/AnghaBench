
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;


 int PCIE_9XX_INT_EN0 ;
 int PCIE_BRIDGE_MSI_ADDRH ;
 int PCIE_BRIDGE_MSI_ADDRL ;
 int PCIE_BRIDGE_MSI_CAP ;
 int PCIE_INT_EN0 ;
 scalar_t__ cpu_is_xlp9xx () ;
 int nlm_read_pci_reg (int,int) ;
 int nlm_read_reg (int,int) ;
 int nlm_write_pci_reg (int,int,int) ;
 int nlm_write_reg (int,int,int) ;

__attribute__((used)) static void xlp_config_link_msi(uint64_t lnkbase, int lirq, uint64_t msiaddr)
{
 u32 val;

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


 nlm_write_reg(lnkbase, PCIE_BRIDGE_MSI_ADDRH, msiaddr >> 32);
 nlm_write_reg(lnkbase, PCIE_BRIDGE_MSI_ADDRL, msiaddr & 0xffffffff);


 val = nlm_read_reg(lnkbase, PCIE_BRIDGE_MSI_CAP);
 if ((val & (1 << 16)) == 0) {
  val |= 0xb << 16;
  nlm_write_reg(lnkbase, PCIE_BRIDGE_MSI_CAP, val);
 }
}
