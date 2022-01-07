
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int resource_size_t ;



resource_size_t pcibios_align_resource(void *data, const struct resource *res,
           resource_size_t size,
           resource_size_t align)
{
 return 0;
}
