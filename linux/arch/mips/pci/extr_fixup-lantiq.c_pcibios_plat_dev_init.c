
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ltq_pci_plat_arch_init (struct pci_dev*) ;
 int ltq_pci_plat_dev_init (struct pci_dev*) ;

int pcibios_plat_dev_init(struct pci_dev *dev)
{
 if (ltq_pci_plat_arch_init)
  return ltq_pci_plat_arch_init(dev);

 if (ltq_pci_plat_dev_init)
  return ltq_pci_plat_dev_init(dev);

 return 0;
}
