
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct resource {int flags; int start; } ;
struct pci_dev {int bus; } ;
struct pci_controller {scalar_t__* mem_offset; scalar_t__ io_base_virt; TYPE_1__* mem_resources; } ;
struct pci_bus_region {scalar_t__ start; } ;
struct pci_bus {struct pci_dev* self; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int flags; scalar_t__ start; } ;


 int IORESOURCE_MEM ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_PROBE_ONLY ;
 int _IO_BASE ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 scalar_t__ pci_has_flag (int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pcibios_resource_to_bus (int ,struct pci_bus_region*,struct resource*) ;

__attribute__((used)) static int pcibios_uninitialized_bridge_resource(struct pci_bus *bus,
       struct resource *res)
{
 struct pci_controller *hose = pci_bus_to_host(bus);
 struct pci_dev *dev = bus->self;
 resource_size_t offset;
 struct pci_bus_region region;
 u16 command;
 int i;


 if (pci_has_flag(PCI_PROBE_ONLY))
  return 0;


 if (res->flags & IORESOURCE_MEM) {
  pcibios_resource_to_bus(dev->bus, &region, res);


  if (region.start != 0)
   return 0;




  pci_read_config_word(dev, PCI_COMMAND, &command);
  if ((command & PCI_COMMAND_MEMORY) == 0)
   return 1;





  for (i = 0; i < 3; i++) {
   if ((hose->mem_resources[i].flags & IORESOURCE_MEM) &&
       hose->mem_resources[i].start == hose->mem_offset[i])
    return 0;
  }




  return 1;
 } else {

  offset = (unsigned long)hose->io_base_virt - _IO_BASE;
  if (((res->start - offset) & 0xfffffffful) != 0)
   return 0;






  pci_read_config_word(dev, PCI_COMMAND, &command);
  if (command & PCI_COMMAND_IO)
   return 0;




  return 1;
 }
}
