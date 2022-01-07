
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_drv_pci {int dummy; } ;


 int BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE ;
 int BCMA_CORE_PCI_MDIODATA_BLK_ADDR ;
 int BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF ;
 int BCMA_CORE_PCI_MDIODATA_DEV_ADDR ;
 int BCMA_CORE_PCI_MDIODATA_REGADDR_SHF ;
 int BCMA_CORE_PCI_MDIODATA_START ;
 int BCMA_CORE_PCI_MDIODATA_TA ;
 int BCMA_CORE_PCI_MDIODATA_WRITE ;
 int BCMA_CORE_PCI_MDIO_CONTROL ;
 int BCMA_CORE_PCI_MDIO_DATA ;
 int pcicore_read32 (struct bcma_drv_pci*,int ) ;
 int pcicore_write32 (struct bcma_drv_pci*,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bcma_pcie_mdio_set_phy(struct bcma_drv_pci *pc, u16 phy)
{
 u32 v;
 int i;

 v = BCMA_CORE_PCI_MDIODATA_START;
 v |= BCMA_CORE_PCI_MDIODATA_WRITE;
 v |= (BCMA_CORE_PCI_MDIODATA_DEV_ADDR <<
       BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF);
 v |= (BCMA_CORE_PCI_MDIODATA_BLK_ADDR <<
       BCMA_CORE_PCI_MDIODATA_REGADDR_SHF);
 v |= BCMA_CORE_PCI_MDIODATA_TA;
 v |= (phy << 4);
 pcicore_write32(pc, BCMA_CORE_PCI_MDIO_DATA, v);

 udelay(10);
 for (i = 0; i < 200; i++) {
  v = pcicore_read32(pc, BCMA_CORE_PCI_MDIO_CONTROL);
  if (v & BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE)
   break;
  usleep_range(1000, 2000);
 }
}
