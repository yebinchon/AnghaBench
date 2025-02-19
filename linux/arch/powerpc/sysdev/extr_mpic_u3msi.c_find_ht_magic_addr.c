
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {scalar_t__ self; struct pci_bus* parent; } ;


 int HT_CAPTYPE_MSI_MAPPING ;
 unsigned int pci_find_ht_capability (scalar_t__,int ) ;
 int read_ht_magic_addr (scalar_t__,unsigned int) ;

__attribute__((used)) static u64 find_ht_magic_addr(struct pci_dev *pdev, unsigned int hwirq)
{
 struct pci_bus *bus;
 unsigned int pos;

 for (bus = pdev->bus; bus && bus->self; bus = bus->parent) {
  pos = pci_find_ht_capability(bus->self, HT_CAPTYPE_MSI_MAPPING);
  if (pos)
   return read_ht_magic_addr(bus->self, pos);
 }

 return 0;
}
