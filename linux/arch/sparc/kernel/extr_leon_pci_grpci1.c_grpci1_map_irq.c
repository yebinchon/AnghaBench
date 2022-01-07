
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {TYPE_1__* bus; } ;
struct grpci1_priv {int* irq_map; } ;
struct TYPE_2__ {struct grpci1_priv* sysdata; } ;



__attribute__((used)) static int grpci1_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 struct grpci1_priv *priv = dev->bus->sysdata;
 int irq_group;


 irq_group = slot & 0x3;
 pin = ((pin - 1) + irq_group) & 0x3;

 return priv->irq_map[pin];
}
