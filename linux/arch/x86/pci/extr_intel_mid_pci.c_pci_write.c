
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_bus {int number; } ;
struct TYPE_4__ {int (* write ) (int ,int ,unsigned int,int,int,int ) ;} ;
struct TYPE_3__ {int (* write ) (int ,int ,unsigned int,int,int,int ) ;} ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_5 ;
 int PCI_ROM_ADDRESS ;
 int fixed_bar_cap (struct pci_bus*,unsigned int) ;
 int pci_device_update_fixed (struct pci_bus*,unsigned int,int,int,int ,int) ;
 TYPE_2__ pci_direct_conf1 ;
 int pci_domain_nr (struct pci_bus*) ;
 TYPE_1__* raw_pci_ext_ops ;
 int stub1 (int ,int ,unsigned int,int,int,int ) ;
 int stub2 (int ,int ,unsigned int,int,int,int ) ;
 scalar_t__ type1_access_ok (int ,unsigned int,int) ;

__attribute__((used)) static int pci_write(struct pci_bus *bus, unsigned int devfn, int where,
       int size, u32 value)
{
 int offset;





 if (where == PCI_ROM_ADDRESS)
  return 0;







 offset = fixed_bar_cap(bus, devfn);
 if (offset &&
     (where >= PCI_BASE_ADDRESS_0 && where <= PCI_BASE_ADDRESS_5)) {
  return pci_device_update_fixed(bus, devfn, where, size, value,
            offset);
 }






 if (type1_access_ok(bus->number, devfn, where))
  return pci_direct_conf1.write(pci_domain_nr(bus), bus->number,
           devfn, where, size, value);
 return raw_pci_ext_ops->write(pci_domain_nr(bus), bus->number, devfn,
          where, size, value);
}
