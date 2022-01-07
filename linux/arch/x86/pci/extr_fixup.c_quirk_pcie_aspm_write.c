
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_bus {int number; TYPE_1__* self; } ;
struct TYPE_2__ {int device; } ;


 size_t GET_INDEX (int ,unsigned int) ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int pci_domain_nr (struct pci_bus*) ;
 int* quirk_aspm_offset ;
 int raw_pci_write (int ,int ,unsigned int,int,int,int) ;

__attribute__((used)) static int quirk_pcie_aspm_write(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 value)
{
 u8 offset;

 offset = quirk_aspm_offset[GET_INDEX(bus->self->device, devfn)];

 if ((offset) && (where == offset))
  value = value & ~PCI_EXP_LNKCTL_ASPMC;

 return raw_pci_write(pci_domain_nr(bus), bus->number,
      devfn, where, size, value);
}
