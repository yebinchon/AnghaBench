
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int flags; } ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;
 scalar_t__ skip_isa_ioresource_align (struct pci_dev*) ;

resource_size_t pcibios_align_resource(void *data, const struct resource *res,
    resource_size_t size, resource_size_t align)
{
 struct pci_dev *dev = data;
 resource_size_t start = res->start;

 if (res->flags & IORESOURCE_IO) {
  if (skip_isa_ioresource_align(dev))
   return start;
  if (start & 0x300)
   start = (start + 0x3ff) & ~0x3ff;
 }

 return start;
}
