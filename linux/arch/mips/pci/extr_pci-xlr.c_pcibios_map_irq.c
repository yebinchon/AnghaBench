
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int get_irq_vector (struct pci_dev const*) ;

int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 return get_irq_vector(dev);
}
