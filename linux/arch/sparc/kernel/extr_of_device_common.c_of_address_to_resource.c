
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int * resource; } ;
struct platform_device {int num_resources; TYPE_1__ archdata; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int memcpy (struct resource*,int *,int) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;

int of_address_to_resource(struct device_node *node, int index,
      struct resource *r)
{
 struct platform_device *op = of_find_device_by_node(node);

 if (!op || index >= op->num_resources)
  return -EINVAL;

 memcpy(r, &op->archdata.resource[index], sizeof(*r));
 return 0;
}
