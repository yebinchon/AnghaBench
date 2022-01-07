
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int IORESOURCE_UNSET ;

__attribute__((used)) static void quirk_intel_th_dnv(struct pci_dev *dev)
{
 struct resource *r = &dev->resource[4];





 if (r->end == r->start + 0x7ff) {
  r->start = 0;
  r->end = 0x3fffff;
  r->flags |= IORESOURCE_UNSET;
 }
}
