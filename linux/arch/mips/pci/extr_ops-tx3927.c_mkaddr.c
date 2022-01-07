
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int number; int * parent; } ;
struct TYPE_2__ {int ica; int pcistatim; int pcistat; } ;


 unsigned char PCI_DEVFN (int ,int ) ;
 int PCI_STATUS_REC_MASTER_ABORT ;
 int TX3927_PCIC_MAX_DEVNU ;
 TYPE_1__* tx3927_pcicptr ;

__attribute__((used)) static int mkaddr(struct pci_bus *bus, unsigned char devfn, unsigned char where)
{
 if (bus->parent == ((void*)0) &&
     devfn >= PCI_DEVFN(TX3927_PCIC_MAX_DEVNU, 0))
  return -1;
 tx3927_pcicptr->ica =
  ((bus->number & 0xff) << 0x10) |
  ((devfn & 0xff) << 0x08) |
  (where & 0xfc) | (bus->parent ? 1 : 0);


 tx3927_pcicptr->pcistat |= PCI_STATUS_REC_MASTER_ABORT;
 tx3927_pcicptr->pcistatim &= ~PCI_STATUS_REC_MASTER_ABORT;
 return 0;
}
