
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_OHCI_INT_REG ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void loongson_cs5536_ohci_fixup(struct pci_dev *pdev)
{


 pci_write_config_dword(pdev, PCI_OHCI_INT_REG, 1);
}
