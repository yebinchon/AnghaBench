
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ start; int end; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_SPACE_MEMORY ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int outb (int,int) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_fixup_83c553(struct pci_dev *dev)
{



 pci_write_config_dword(dev, PCI_BASE_ADDRESS_0, PCI_BASE_ADDRESS_SPACE_MEMORY);
 pci_write_config_word(dev, PCI_COMMAND, PCI_COMMAND_IO);

 dev->resource[0].end -= dev->resource[0].start;
 dev->resource[0].start = 0;




 pci_write_config_byte(dev, 0x48, 0xff);






 pci_write_config_byte(dev, 0x42, 0x01);




 pci_write_config_byte(dev, 0x40, 0x22);







 pci_write_config_byte(dev, 0x83, 0x02);





 pci_write_config_byte(dev, 0x80, 0x11);
 pci_write_config_byte(dev, 0x81, 0x00);





 pci_write_config_word(dev, 0x44, 0xb000);
 outb(0x08, 0x4d1);
}
