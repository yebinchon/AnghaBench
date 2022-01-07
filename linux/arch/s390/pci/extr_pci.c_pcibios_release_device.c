
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int zpci_unmap_resources (struct pci_dev*) ;

void pcibios_release_device(struct pci_dev *pdev)
{
 zpci_unmap_resources(pdev);
}
