
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int number; } ;


 int GAPSPCI_BBA_CONFIG ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int gapspci_config_access (int ,unsigned int) ;
 int outb (int ,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;

__attribute__((used)) static int gapspci_write(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val)
{
 if (!gapspci_config_access(bus->number, devfn))
  return PCIBIOS_DEVICE_NOT_FOUND;

 switch (size) {
 case 1: outb(( u8)val, GAPSPCI_BBA_CONFIG+where); break;
 case 2: outw((u16)val, GAPSPCI_BBA_CONFIG+where); break;
 case 4: outl((u32)val, GAPSPCI_BBA_CONFIG+where); break;
 }

        return PCIBIOS_SUCCESSFUL;
}
