
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct pci_dev {int dummy; } ;
typedef scalar_t__ resource_size_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ fixup_bigphys_addr (scalar_t__,scalar_t__) ;
 scalar_t__ resource_size (struct resource const*) ;

void pci_resource_to_user(const struct pci_dev *dev, int bar,
     const struct resource *rsrc, resource_size_t *start,
     resource_size_t *end)
{
 phys_addr_t size = resource_size(rsrc);

 *start = fixup_bigphys_addr(rsrc->start, size);
 *end = rsrc->start + size - 1;
}
