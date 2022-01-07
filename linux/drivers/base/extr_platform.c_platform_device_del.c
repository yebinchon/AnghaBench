
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ parent; } ;
struct platform_device {int num_resources; struct resource* resource; int id; scalar_t__ id_auto; int dev; } ;


 int IS_ERR_OR_NULL (struct platform_device*) ;
 int PLATFORM_DEVID_AUTO ;
 int device_del (int *) ;
 int ida_simple_remove (int *,int ) ;
 int platform_devid_ida ;
 int release_resource (struct resource*) ;

void platform_device_del(struct platform_device *pdev)
{
 int i;

 if (!IS_ERR_OR_NULL(pdev)) {
  device_del(&pdev->dev);

  if (pdev->id_auto) {
   ida_simple_remove(&platform_devid_ida, pdev->id);
   pdev->id = PLATFORM_DEVID_AUTO;
  }

  for (i = 0; i < pdev->num_resources; i++) {
   struct resource *r = &pdev->resource[i];
   if (r->parent)
    release_resource(r);
  }
 }
}
