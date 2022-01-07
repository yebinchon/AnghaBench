
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_COMMAND_PARITY ;
 scalar_t__ PCI_DEVICE_ID_ITE_8212 ;
 int PCI_LATENCY_TIMER ;
 scalar_t__ PCI_VENDOR_ID_ITE ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void it821x_disable_raid(struct pci_dev *pdev)
{

 if (pdev->vendor != PCI_VENDOR_ID_ITE ||
   pdev->device != PCI_DEVICE_ID_ITE_8212)
   return;


 pci_write_config_byte(pdev, 0x5E, 0x01);


 pci_write_config_byte(pdev, 0x50, 0x00);
 pci_write_config_word(pdev, PCI_COMMAND,
         PCI_COMMAND_PARITY | PCI_COMMAND_IO |
         PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
 pci_write_config_word(pdev, 0x40, 0xA0F3);

 pci_write_config_dword(pdev,0x4C, 0x02040204);
 pci_write_config_byte(pdev, 0x42, 0x36);
 pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x20);
}
