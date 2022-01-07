
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* self; } ;
struct TYPE_3__ {int devfn; } ;


 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ cpu_is_xlp9xx () ;

int xlp_socdev_to_node(const struct pci_dev *lnkdev)
{
 if (cpu_is_xlp9xx())
  return PCI_FUNC(lnkdev->bus->self->devfn);
 else
  return PCI_SLOT(lnkdev->devfn) / 8;
}
