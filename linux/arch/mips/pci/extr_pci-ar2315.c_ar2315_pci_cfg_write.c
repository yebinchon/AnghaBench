
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;
struct ar2315_pci_ctrl {int dummy; } ;


 scalar_t__ AR2315_PCI_HOST_SLOT ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 scalar_t__ PCI_SLOT (unsigned int) ;
 struct ar2315_pci_ctrl* ar2315_pci_bus_to_apc (struct pci_bus*) ;
 int ar2315_pci_cfg_access (struct ar2315_pci_ctrl*,unsigned int,int,int,int *,int) ;

__attribute__((used)) static int ar2315_pci_cfg_write(struct pci_bus *bus, unsigned devfn, int where,
    int size, u32 value)
{
 struct ar2315_pci_ctrl *apc = ar2315_pci_bus_to_apc(bus);

 if (PCI_SLOT(devfn) == AR2315_PCI_HOST_SLOT)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return ar2315_pci_cfg_access(apc, devfn, where, size, &value, 1);
}
