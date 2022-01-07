
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_pbm_info {int devhandle; } ;
struct pci_bus {unsigned int number; struct pci_pbm_info* sysdata; } ;


 int HV_PCI_DEVICE_BUILD (unsigned int,unsigned int,unsigned int) ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned int PCI_FUNC (unsigned int) ;
 unsigned int PCI_SLOT (unsigned int) ;
 scalar_t__ config_out_of_range (struct pci_pbm_info*,unsigned int,unsigned int,int) ;
 int pci_sun4v_config_put (int ,int ,int,int,int ) ;

__attribute__((used)) static int sun4v_write_pci_cfg(struct pci_bus *bus_dev, unsigned int devfn,
          int where, int size, u32 value)
{
 struct pci_pbm_info *pbm = bus_dev->sysdata;
 u32 devhandle = pbm->devhandle;
 unsigned int bus = bus_dev->number;
 unsigned int device = PCI_SLOT(devfn);
 unsigned int func = PCI_FUNC(devfn);

 if (config_out_of_range(pbm, bus, devfn, where)) {

 } else {




  pci_sun4v_config_put(devhandle,
         HV_PCI_DEVICE_BUILD(bus, device, func),
         where, size, value);
 }
 return PCIBIOS_SUCCESSFUL;
}
