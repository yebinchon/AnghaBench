
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ no_d1d2; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* self; } ;
struct TYPE_3__ {unsigned int no_d1d2; } ;



__attribute__((used)) static inline int pci_no_d1d2(struct pci_dev *dev)
{
 unsigned int parent_dstates = 0;

 if (dev->bus->self)
  parent_dstates = dev->bus->self->no_d1d2;
 return (dev->no_d1d2 || parent_dstates);

}
