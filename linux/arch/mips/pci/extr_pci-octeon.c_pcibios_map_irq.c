
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int octeon_pcibios_map_irq (struct pci_dev const*,int ,int ) ;
 int panic (char*) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 if (octeon_pcibios_map_irq)
  return octeon_pcibios_map_irq(dev, slot, pin);
 else
  panic("octeon_pcibios_map_irq not set.");
}
