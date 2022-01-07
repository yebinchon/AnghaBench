
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int GAPSPCI_BBA_CONFIG ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int gapspci_config_access (int ,unsigned int) ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;

__attribute__((used)) static int gapspci_read(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val)
{
 *val = 0xffffffff;

 if (!gapspci_config_access(bus->number, devfn))
  return PCIBIOS_DEVICE_NOT_FOUND;

 switch (size) {
 case 1: *val = inb(GAPSPCI_BBA_CONFIG+where); break;
 case 2: *val = inw(GAPSPCI_BBA_CONFIG+where); break;
 case 4: *val = inl(GAPSPCI_BBA_CONFIG+where); break;
 }

        return PCIBIOS_SUCCESSFUL;
}
