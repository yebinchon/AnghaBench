
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device_info {int properties; int size_data; int data; int num_res; int res; scalar_t__ dma_mask; int of_node_reused; int fwnode; int parent; int id; int name; } ;
struct TYPE_2__ {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; int of_node_reused; int fwnode; int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ACPI_COMPANION_SET (TYPE_1__*,int *) ;
 int ENOMEM ;
 struct platform_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int kmemleak_ignore (scalar_t__*) ;
 int of_node_get (int ) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,int ,int ) ;
 int platform_device_add_properties (struct platform_device*,int ) ;
 int platform_device_add_resources (struct platform_device*,int ,int ) ;
 struct platform_device* platform_device_alloc (int ,int ) ;
 int platform_device_put (struct platform_device*) ;
 int to_of_node (int ) ;

struct platform_device *platform_device_register_full(
  const struct platform_device_info *pdevinfo)
{
 int ret = -ENOMEM;
 struct platform_device *pdev;

 pdev = platform_device_alloc(pdevinfo->name, pdevinfo->id);
 if (!pdev)
  return ERR_PTR(-ENOMEM);

 pdev->dev.parent = pdevinfo->parent;
 pdev->dev.fwnode = pdevinfo->fwnode;
 pdev->dev.of_node = of_node_get(to_of_node(pdev->dev.fwnode));
 pdev->dev.of_node_reused = pdevinfo->of_node_reused;

 if (pdevinfo->dma_mask) {






  pdev->dev.dma_mask =
   kmalloc(sizeof(*pdev->dev.dma_mask), GFP_KERNEL);
  if (!pdev->dev.dma_mask)
   goto err;

  kmemleak_ignore(pdev->dev.dma_mask);

  *pdev->dev.dma_mask = pdevinfo->dma_mask;
  pdev->dev.coherent_dma_mask = pdevinfo->dma_mask;
 }

 ret = platform_device_add_resources(pdev,
   pdevinfo->res, pdevinfo->num_res);
 if (ret)
  goto err;

 ret = platform_device_add_data(pdev,
   pdevinfo->data, pdevinfo->size_data);
 if (ret)
  goto err;

 if (pdevinfo->properties) {
  ret = platform_device_add_properties(pdev,
           pdevinfo->properties);
  if (ret)
   goto err;
 }

 ret = platform_device_add(pdev);
 if (ret) {
err:
  ACPI_COMPANION_SET(&pdev->dev, ((void*)0));
  kfree(pdev->dev.dma_mask);
  platform_device_put(pdev);
  return ERR_PTR(ret);
 }

 return pdev;
}
