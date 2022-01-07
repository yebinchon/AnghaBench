
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_CONFIG_DATA ;
 int outb (int ,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;
 int pci_virtio_guest_write_config_addr (struct pci_bus*,unsigned int,int) ;

__attribute__((used)) static int pci_virtio_guest_write_config(struct pci_bus *bus,
  unsigned int devfn, int reg, int size, u32 val)
{
 pci_virtio_guest_write_config_addr(bus, devfn, reg);

 switch (size) {
 case 1:
  outb(val, PCI_CONFIG_DATA + (reg & 3));
  break;
 case 2:
  outw(val, PCI_CONFIG_DATA + (reg & 2));
  break;
 case 4:
  outl(val, PCI_CONFIG_DATA);
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}
