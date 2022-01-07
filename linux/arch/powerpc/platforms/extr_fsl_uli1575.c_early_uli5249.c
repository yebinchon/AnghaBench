
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;


 int PCI_CLASS_PROG ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int is_quirk_valid () ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void early_uli5249(struct pci_dev *dev)
{
 unsigned char temp;

 if (!is_quirk_valid())
  return;

 pci_write_config_word(dev, PCI_COMMAND, PCI_COMMAND_IO |
   PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);


 pci_read_config_byte(dev, 0x7c, &temp);
 pci_write_config_byte(dev, 0x7c, 0x80);


 pci_write_config_byte(dev, PCI_CLASS_PROG, 0x01);
 dev->class |= 0x1;


 pci_write_config_byte(dev, 0x7c, temp);
}
