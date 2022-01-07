
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int IRQ_PCIINTA ;
 int IRQ_PCIINTB ;
 int IRQ_PCIINTC ;
 int IRQ_PCIINTD ;

__attribute__((used)) static int pci_puv3_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 if (dev->bus->number == 0) {
 }
 return -1;
}
