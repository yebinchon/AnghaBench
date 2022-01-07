
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
 int __kernel_stb (int ,int ) ;
 int __kernel_stw (int ,int ) ;
 int mb () ;
 scalar_t__ mk_conf_addr (struct pci_bus*,unsigned int,int,unsigned long*,unsigned char*) ;

__attribute__((used)) static int
titan_write_config(struct pci_bus *bus, unsigned int devfn, int where,
     int size, u32 value)
{
 unsigned long addr;
 unsigned char type1;

 if (mk_conf_addr(bus, devfn, where, &addr, &type1))
  return PCIBIOS_DEVICE_NOT_FOUND;

 switch (size) {
 case 1:
  __kernel_stb(value, *(vucp)addr);
  mb();
  __kernel_ldbu(*(vucp)addr);
  break;
 case 2:
  __kernel_stw(value, *(vusp)addr);
  mb();
  __kernel_ldwu(*(vusp)addr);
  break;
 case 4:
  *(vuip)addr = value;
  mb();
  *(vuip)addr;
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}
