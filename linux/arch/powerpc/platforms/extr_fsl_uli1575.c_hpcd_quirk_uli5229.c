
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int machine_is (int ) ;
 int mpc86xx_hpcd ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;

__attribute__((used)) static void hpcd_quirk_uli5229(struct pci_dev *dev)
{
 unsigned char c;

 if (!machine_is(mpc86xx_hpcd))
  return;

 pci_read_config_byte(dev, 0x4b, &c);
 c |= 0x10;
 pci_write_config_byte(dev, 0x4b, c);
}
