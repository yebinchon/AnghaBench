
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int io_resource; int pci_io_size; } ;
typedef int resource_size_t ;


 int resource_size (int *) ;

__attribute__((used)) static resource_size_t pcibios_io_size(const struct pci_controller *hose)
{



 return resource_size(&hose->io_resource);

}
