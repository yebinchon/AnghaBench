
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union pci_config_address {int register_number; unsigned int devfn_number; int enable_bit; int w; int bus_number; } ;
struct pci_bus {int number; } ;


 int PCI_CONFIG_ADDRESS ;
 int outl (int ,int ) ;

__attribute__((used)) static void pci_virtio_guest_write_config_addr(struct pci_bus *bus,
     unsigned int devfn, int reg)
{
 union pci_config_address pca = { .w = 0 };

 pca.register_number = reg;
 pca.devfn_number = devfn;
 pca.bus_number = bus->number;
 pca.enable_bit = 1;

 outl(pca.w, PCI_CONFIG_ADDRESS);
}
