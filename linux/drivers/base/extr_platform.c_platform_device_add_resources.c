
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {unsigned int num_resources; struct resource* resource; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct resource*) ;
 struct resource* kmemdup (struct resource const*,int,int ) ;

int platform_device_add_resources(struct platform_device *pdev,
      const struct resource *res, unsigned int num)
{
 struct resource *r = ((void*)0);

 if (res) {
  r = kmemdup(res, sizeof(struct resource) * num, GFP_KERNEL);
  if (!r)
   return -ENOMEM;
 }

 kfree(pdev->resource);
 pdev->resource = r;
 pdev->num_resources = num;
 return 0;
}
