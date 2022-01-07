
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CLASS_REVISION ;
 int PCI_CLASS_STORAGE_SATA_AHCI ;
 int is_quirk_valid () ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned int*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int pci_write_config_dword (struct pci_dev*,int ,unsigned int) ;

__attribute__((used)) static void quirk_uli5288(struct pci_dev *dev)
{
 unsigned char c;
 unsigned int d;

 if (!is_quirk_valid())
  return;


 pci_read_config_byte(dev, 0x83, &c);
 pci_write_config_byte(dev, 0x83, c|0x80);

 pci_read_config_dword(dev, PCI_CLASS_REVISION, &d);
 d = (d & 0xff) | (PCI_CLASS_STORAGE_SATA_AHCI << 8);
 pci_write_config_dword(dev, PCI_CLASS_REVISION, d);


 pci_write_config_byte(dev, 0x83, c);


 pci_read_config_byte(dev, 0x84, &c);
 pci_write_config_byte(dev, 0x84, c & ~0x01);
}
