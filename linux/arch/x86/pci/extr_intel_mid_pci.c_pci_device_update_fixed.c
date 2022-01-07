
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_bus {unsigned int number; } ;
struct TYPE_2__ {int (* write ) (unsigned int,unsigned int,unsigned int,int,int,unsigned long) ;int (* read ) (unsigned int,unsigned int,unsigned int,int,int,int*) ;} ;


 int PCI_BASE_ADDRESS_0 ;
 unsigned int pci_domain_nr (struct pci_bus*) ;
 TYPE_1__* raw_pci_ext_ops ;
 int stub1 (unsigned int,unsigned int,unsigned int,int,int,int*) ;
 int stub2 (unsigned int,unsigned int,unsigned int,int,int,unsigned long) ;
 int stub3 (unsigned int,unsigned int,unsigned int,int,int,int) ;

__attribute__((used)) static int pci_device_update_fixed(struct pci_bus *bus, unsigned int devfn,
       int reg, int len, u32 val, int offset)
{
 u32 size;
 unsigned int domain, busnum;
 int bar = (reg - PCI_BASE_ADDRESS_0) >> 2;

 domain = pci_domain_nr(bus);
 busnum = bus->number;

 if (val == ~0 && len == 4) {
  unsigned long decode;

  raw_pci_ext_ops->read(domain, busnum, devfn,
          offset + 8 + (bar * 4), 4, &size);


  if (size) {
   decode = size - 1;
   decode |= decode >> 1;
   decode |= decode >> 2;
   decode |= decode >> 4;
   decode |= decode >> 8;
   decode |= decode >> 16;
   decode++;
   decode = ~(decode - 1);
  } else {
   decode = 0;
  }







  return raw_pci_ext_ops->write(domain, busnum, devfn, reg, 4,
           decode);
 }


 return raw_pci_ext_ops->write(domain, busnum, devfn, reg, len, val);
}
