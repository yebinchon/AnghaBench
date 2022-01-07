
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {scalar_t__ io_base_virt; } ;
typedef scalar_t__ resource_size_t ;


 scalar_t__ _IO_BASE ;

resource_size_t pcibios_io_space_offset(struct pci_controller *hose)
{
 return (unsigned long) hose->io_base_virt - _IO_BASE;
}
