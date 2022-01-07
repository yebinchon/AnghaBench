
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; int flags; } ;
struct pci_dev {struct pci_channel* sysdata; } ;
struct pci_channel {TYPE_1__* resources; } ;
typedef int resource_size_t ;
struct TYPE_2__ {int start; } ;


 int IORESOURCE_IO ;
 int PCIBIOS_MIN_IO ;

resource_size_t pcibios_align_resource(void *data, const struct resource *res,
    resource_size_t size, resource_size_t align)
{
 struct pci_dev *dev = data;
 struct pci_channel *hose = dev->sysdata;
 resource_size_t start = res->start;

 if (res->flags & IORESOURCE_IO) {
  if (start < PCIBIOS_MIN_IO + hose->resources[0].start)
   start = PCIBIOS_MIN_IO + hose->resources[0].start;




  if (start & 0x300)
   start = (start + 0x3ff) & ~0x3ff;
 }

 return start;
}
