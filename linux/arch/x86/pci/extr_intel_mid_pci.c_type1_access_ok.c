
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PCI_DEVFN (int,int ) ;
 int PCI_HEADER_TYPE ;
 int PCI_STATUS ;

__attribute__((used)) static bool type1_access_ok(unsigned int bus, unsigned int devfn, int reg)
{
 if (reg >= 0x100 || reg == PCI_STATUS || reg == PCI_HEADER_TYPE)
  return 0;
 if (bus == 0 && (devfn == PCI_DEVFN(2, 0)
    || devfn == PCI_DEVFN(0, 0)
    || devfn == PCI_DEVFN(3, 0)))
  return 1;
 return 0;
}
