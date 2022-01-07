
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_INTERRUPT_LINE ;
 int dmi_check_system (int ) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 int toshiba_line_size ;
 int toshiba_ohci1394_dmi_table ;

__attribute__((used)) static void pci_post_fixup_toshiba_ohci1394(struct pci_dev *dev)
{
 if (!dmi_check_system(toshiba_ohci1394_dmi_table))
  return;


 pci_write_config_word(dev, PCI_CACHE_LINE_SIZE, toshiba_line_size);
 pci_read_config_byte(dev, PCI_INTERRUPT_LINE, (u8 *)&dev->irq);
 pci_write_config_dword(dev, PCI_BASE_ADDRESS_0,
          pci_resource_start(dev, 0));
 pci_write_config_dword(dev, PCI_BASE_ADDRESS_1,
          pci_resource_start(dev, 1));
}
