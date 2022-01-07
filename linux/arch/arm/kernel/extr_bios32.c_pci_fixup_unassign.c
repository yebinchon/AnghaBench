
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ start; int end; } ;



__attribute__((used)) static void pci_fixup_unassign(struct pci_dev *dev)
{
 dev->resource[0].end -= dev->resource[0].start;
 dev->resource[0].start = 0;
}
