
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void ml510_ali_quirk(struct pci_dev *dev)
{

 pci_write_config_byte(dev, 0x58, 0x4c);

 pci_write_config_byte(dev, 0x44, 0x0d);

 pci_write_config_byte(dev, 0x75, 0x0f);

 pci_write_config_byte(dev, 0x09, 0xff);


 pci_write_config_byte(dev, 0x48, 0x00);

 pci_write_config_byte(dev, 0x4a, 0x00);

 pci_write_config_byte(dev, 0x4b, 0x60);

 pci_write_config_byte(dev, 0x74, 0x06);
}
