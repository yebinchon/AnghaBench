
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int devfn; int busno; TYPE_1__* phb; } ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int bus; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;

__attribute__((used)) static struct pci_dev *get_pci_dev(struct device_node *dn)
{
 struct pci_dn *pdn = PCI_DN(dn);
 struct pci_dev *pdev;

 pdev = pci_get_domain_bus_and_slot(pci_domain_nr(pdn->phb->bus),
        pdn->busno, pdn->devfn);
 if (pdev)
  pci_dev_put(pdev);

 return pdev;
}
