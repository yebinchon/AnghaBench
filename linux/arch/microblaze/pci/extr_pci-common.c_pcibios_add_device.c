
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;


 int of_irq_parse_and_map_pci (struct pci_dev*,int ,int ) ;

int pcibios_add_device(struct pci_dev *dev)
{
 dev->irq = of_irq_parse_and_map_pci(dev, 0, 0);

 return 0;
}
