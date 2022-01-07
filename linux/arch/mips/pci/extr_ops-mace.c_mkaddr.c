
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;



__attribute__((used)) static inline int mkaddr(struct pci_bus *bus, unsigned int devfn,
 unsigned int reg)
{
 return ((bus->number & 0xff) << 16) |
  ((devfn & 0xff) << 8) |
  (reg & 0xfc);
}
