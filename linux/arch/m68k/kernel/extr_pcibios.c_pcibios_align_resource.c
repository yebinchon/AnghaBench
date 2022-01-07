
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int flags; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;

resource_size_t pcibios_align_resource(void *data, const struct resource *res,
 resource_size_t size, resource_size_t align)
{
 resource_size_t start = res->start;

 if ((res->flags & IORESOURCE_IO) && (start & 0x300))
  start = (start + 0x3ff) & ~0x3ff;

 start = (start + align - 1) & ~(align - 1);

 return start;
}
