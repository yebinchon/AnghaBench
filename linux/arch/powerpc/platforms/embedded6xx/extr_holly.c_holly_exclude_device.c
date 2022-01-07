
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct pci_controller {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCI_SLOT (scalar_t__) ;

__attribute__((used)) static int holly_exclude_device(struct pci_controller *hose, u_char bus,
    u_char devfn)
{
 if (bus == 0 && PCI_SLOT(devfn) == 0)
  return PCIBIOS_DEVICE_NOT_FOUND;
 else
  return PCIBIOS_SUCCESSFUL;
}
