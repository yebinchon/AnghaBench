
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 unsigned int PCI_COMMAND_IO ;
 int PCI_VGA_STATE_CHANGE_BRIDGE ;
 int pci_domain_nr (TYPE_1__*) ;
 int uv_bios_set_legacy_vga_target (int,int,int) ;

__attribute__((used)) static int uv_set_vga_state(struct pci_dev *pdev, bool decode, unsigned int command_bits, u32 flags)
{
 int domain, bus, rc;

 if (!(flags & PCI_VGA_STATE_CHANGE_BRIDGE))
  return 0;

 if ((command_bits & PCI_COMMAND_IO) == 0)
  return 0;

 domain = pci_domain_nr(pdev->bus);
 bus = pdev->bus->number;

 rc = uv_bios_set_legacy_vga_target(decode, domain, bus);

 return rc;
}
