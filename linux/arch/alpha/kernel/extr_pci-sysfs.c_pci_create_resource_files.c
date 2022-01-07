
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_ROM_RESOURCE ;
 int pci_create_attr (struct pci_dev*,int) ;
 int pci_remove_resource_files (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int) ;

int pci_create_resource_files(struct pci_dev *pdev)
{
 int i;
 int retval;


 for (i = 0; i < PCI_ROM_RESOURCE; i++) {


  if (!pci_resource_len(pdev, i))
   continue;

  retval = pci_create_attr(pdev, i);
  if (retval) {
   pci_remove_resource_files(pdev);
   return retval;
  }
 }
 return 0;
}
