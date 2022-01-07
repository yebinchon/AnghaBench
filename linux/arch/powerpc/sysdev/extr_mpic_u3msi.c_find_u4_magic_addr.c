
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int bus; } ;
struct pci_controller {int dn; } ;


 scalar_t__ of_device_is_compatible (int ,char*) ;
 struct pci_controller* pci_bus_to_host (int ) ;

__attribute__((used)) static u64 find_u4_magic_addr(struct pci_dev *pdev, unsigned int hwirq)
{
 struct pci_controller *hose = pci_bus_to_host(pdev->bus);
 if (of_device_is_compatible(hose->dn, "u4-pcie") ||
     of_device_is_compatible(hose->dn, "U4-pcie"))
  return 0xf8004000 | (hwirq << 4);

 return 0;
}
