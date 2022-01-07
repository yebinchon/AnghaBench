
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int res_name; } ;
struct resource {unsigned long start; unsigned long end; unsigned long flags; int name; } ;


 int GFP_KERNEL ;
 int iomem_resource ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 scalar_t__ request_resource (int *,struct resource*) ;

__attribute__((used)) static struct resource *__alloc_res(struct zpci_dev *zdev, unsigned long start,
        unsigned long size, unsigned long flags)
{
 struct resource *r;

 r = kzalloc(sizeof(*r), GFP_KERNEL);
 if (!r)
  return ((void*)0);

 r->start = start;
 r->end = r->start + size - 1;
 r->flags = flags;
 r->name = zdev->res_name;

 if (request_resource(&iomem_resource, r)) {
  kfree(r);
  return ((void*)0);
 }
 return r;
}
