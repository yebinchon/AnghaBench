
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {struct resource* parent; int * name; } ;
struct TYPE_6__ {struct TYPE_6__* parent; int * bus; } ;
struct platform_device {int id; int id_auto; int num_resources; struct resource* resource; TYPE_1__ dev; int name; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IORESOURCE_IO ;
 scalar_t__ IORESOURCE_MEM ;


 int dev_err (TYPE_1__*,char*,int,struct resource*) ;
 int * dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,...) ;
 int device_add (TYPE_1__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int insert_resource (struct resource*,struct resource*) ;
 struct resource iomem_resource ;
 struct resource ioport_resource ;
 TYPE_1__ platform_bus ;
 int platform_bus_type ;
 int platform_devid_ida ;
 int pr_debug (char*,int *,int *) ;
 int release_resource (struct resource*) ;
 scalar_t__ resource_type (struct resource*) ;

int platform_device_add(struct platform_device *pdev)
{
 int i, ret;

 if (!pdev)
  return -EINVAL;

 if (!pdev->dev.parent)
  pdev->dev.parent = &platform_bus;

 pdev->dev.bus = &platform_bus_type;

 switch (pdev->id) {
 default:
  dev_set_name(&pdev->dev, "%s.%d", pdev->name, pdev->id);
  break;
 case 128:
  dev_set_name(&pdev->dev, "%s", pdev->name);
  break;
 case 129:





  ret = ida_simple_get(&platform_devid_ida, 0, 0, GFP_KERNEL);
  if (ret < 0)
   goto err_out;
  pdev->id = ret;
  pdev->id_auto = 1;
  dev_set_name(&pdev->dev, "%s.%d.auto", pdev->name, pdev->id);
  break;
 }

 for (i = 0; i < pdev->num_resources; i++) {
  struct resource *p, *r = &pdev->resource[i];

  if (r->name == ((void*)0))
   r->name = dev_name(&pdev->dev);

  p = r->parent;
  if (!p) {
   if (resource_type(r) == IORESOURCE_MEM)
    p = &iomem_resource;
   else if (resource_type(r) == IORESOURCE_IO)
    p = &ioport_resource;
  }

  if (p) {
   ret = insert_resource(p, r);
   if (ret) {
    dev_err(&pdev->dev, "failed to claim resource %d: %pR\n", i, r);
    goto failed;
   }
  }
 }

 pr_debug("Registering platform device '%s'. Parent at %s\n",
   dev_name(&pdev->dev), dev_name(pdev->dev.parent));

 ret = device_add(&pdev->dev);
 if (ret == 0)
  return ret;

 failed:
 if (pdev->id_auto) {
  ida_simple_remove(&platform_devid_ida, pdev->id);
  pdev->id = 129;
 }

 while (--i >= 0) {
  struct resource *r = &pdev->resource[i];
  if (r->parent)
   release_resource(r);
 }

 err_out:
 return ret;
}
