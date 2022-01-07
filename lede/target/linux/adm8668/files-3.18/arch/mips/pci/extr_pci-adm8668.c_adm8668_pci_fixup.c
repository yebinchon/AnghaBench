
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ devfn; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pr_info (char*) ;

__attribute__((used)) static void adm8668_pci_fixup(struct pci_dev *dev)
{
 if (dev->devfn != 0)
  return;

 pr_info("PCI: fixing up ADM8668 controller\n");


 pci_write_config_word(dev, PCI_COMMAND,
  (PCI_COMMAND_IO | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER));


 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, 4);


 pci_write_config_dword(dev, PCI_BASE_ADDRESS_0, 0);
 pci_write_config_dword(dev, PCI_BASE_ADDRESS_1, 0);
}
