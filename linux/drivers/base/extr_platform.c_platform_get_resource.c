
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int num_resources; struct resource* resource; } ;


 unsigned int resource_type (struct resource*) ;

struct resource *platform_get_resource(struct platform_device *dev,
           unsigned int type, unsigned int num)
{
 int i;

 for (i = 0; i < dev->num_resources; i++) {
  struct resource *r = &dev->resource[i];

  if (type == resource_type(r) && num-- == 0)
   return r;
 }
 return ((void*)0);
}
