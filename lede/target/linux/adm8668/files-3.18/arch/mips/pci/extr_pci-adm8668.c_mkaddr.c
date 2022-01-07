
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;



__attribute__((used)) static inline u32 mkaddr(struct pci_bus *bus, unsigned int devfn, int where)
{
 return ((bus->number & 0xff) << 16) | ((devfn & 0xff) << 8) |
  (where & 0xfc);
}
