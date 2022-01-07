
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vusp ;
typedef int * vuip ;
typedef int * vucp ;
typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int __kernel_ldbu (int ) ;
 int __kernel_ldwu (int ) ;
 scalar_t__ mk_conf_addr (struct pci_bus*,unsigned int,int,unsigned long*,unsigned char*) ;

__attribute__((used)) static int
tsunami_read_config(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 *value)
{
 unsigned long addr;
 unsigned char type1;

 if (mk_conf_addr(bus, devfn, where, &addr, &type1))
  return PCIBIOS_DEVICE_NOT_FOUND;

 switch (size) {
 case 1:
  *value = __kernel_ldbu(*(vucp)addr);
  break;
 case 2:
  *value = __kernel_ldwu(*(vusp)addr);
  break;
 case 4:
  *value = *(vuip)addr;
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}
