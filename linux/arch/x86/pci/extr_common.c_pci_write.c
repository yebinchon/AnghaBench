
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int pci_domain_nr (struct pci_bus*) ;
 int raw_pci_write (int ,int ,unsigned int,int,int,int ) ;

__attribute__((used)) static int pci_write(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 value)
{
 return raw_pci_write(pci_domain_nr(bus), bus->number,
      devfn, where, size, value);
}
