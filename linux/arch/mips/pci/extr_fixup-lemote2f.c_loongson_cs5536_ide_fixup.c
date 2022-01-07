
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int CS5536_IDE_FLASH_SIGNATURE ;
 int PCI_IDE_CFG_REG ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void loongson_cs5536_ide_fixup(struct pci_dev *pdev)
{

 pci_write_config_dword(pdev, PCI_IDE_CFG_REG,
          CS5536_IDE_FLASH_SIGNATURE);
}
