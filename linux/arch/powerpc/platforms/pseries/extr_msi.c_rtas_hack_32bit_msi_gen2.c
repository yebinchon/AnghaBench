
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ msi_cap; int dev; } ;


 scalar_t__ PCI_MSI_ADDRESS_HI ;
 scalar_t__ PCI_MSI_ADDRESS_LO ;
 int dev_info (int *,char*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void rtas_hack_32bit_msi_gen2(struct pci_dev *pdev)
{
 u32 addr_hi, addr_lo;






 dev_info(&pdev->dev,
   "rtas_msi: No 32 bit MSI firmware support, forcing 32 bit MSI\n");
 pci_read_config_dword(pdev, pdev->msi_cap + PCI_MSI_ADDRESS_HI, &addr_hi);
 addr_lo = 0xffff0000 | ((addr_hi >> (48 - 32)) << 4);
 pci_write_config_dword(pdev, pdev->msi_cap + PCI_MSI_ADDRESS_LO, addr_lo);
 pci_write_config_dword(pdev, pdev->msi_cap + PCI_MSI_ADDRESS_HI, 0);
}
