
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_CLASS_DEVICE ;
 int PCI_CLASS_PROG ;
 int machine_is (int ) ;
 int mpc86xx_hpcd ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;

__attribute__((used)) static void hpcd_quirk_uli5288(struct pci_dev *dev)
{
 unsigned char c;

 if (!machine_is(mpc86xx_hpcd))
  return;

 pci_read_config_byte(dev, 0x83, &c);
 c |= 0x80;
 pci_write_config_byte(dev, 0x83, c);

 pci_write_config_byte(dev, PCI_CLASS_PROG, 0x01);
 pci_write_config_byte(dev, PCI_CLASS_DEVICE, 0x06);

 pci_read_config_byte(dev, 0x83, &c);
 c &= 0x7f;
 pci_write_config_byte(dev, 0x83, c);
}
