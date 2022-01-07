
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bcma_drv_pci {int dummy; } ;


 int bcma_pcie_mdio_read (struct bcma_drv_pci*,int ,int ) ;
 int bcma_pcie_mdio_write (struct bcma_drv_pci*,int ,int ,int ) ;

__attribute__((used)) static u16 bcma_pcie_mdio_writeread(struct bcma_drv_pci *pc, u16 device,
        u8 address, u16 data)
{
 bcma_pcie_mdio_write(pc, device, address, data);
 return bcma_pcie_mdio_read(pc, device, address);
}
