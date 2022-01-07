
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;



__attribute__((used)) static void
fixup_cpc710_pci64(struct pci_dev* dev)
{



 dev->resource[0].start = dev->resource[0].end = 0;
 dev->resource[0].flags = 0;
 dev->resource[1].start = dev->resource[1].end = 0;
 dev->resource[1].flags = 0;
}
