
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_sb1250_pci(struct pci_dev *dev)
{
 pci_write_config_byte(dev, 0x40, 0xff);
}
