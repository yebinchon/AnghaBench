
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;


 int pcibios_map_phb_io_space (struct pci_controller*) ;

void pcibios_setup_phb_io_space(struct pci_controller *hose)
{
 pcibios_map_phb_io_space(hose);
}
