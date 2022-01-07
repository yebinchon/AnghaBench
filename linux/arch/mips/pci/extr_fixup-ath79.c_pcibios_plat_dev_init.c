
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;

int pcibios_plat_dev_init(struct pci_dev *dev)
{
 return PCIBIOS_SUCCESSFUL;
}
