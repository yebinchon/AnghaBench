
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pcibios_enable_resources (struct pci_dev*,int) ;
 int pcibios_plat_dev_init (struct pci_dev*) ;

int pcibios_enable_device(struct pci_dev *dev, int mask)
{
 int err;

 if ((err = pcibios_enable_resources(dev, mask)) < 0)
  return err;

 return pcibios_plat_dev_init(dev);
}
