
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_irqs; unsigned int* irqs; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct device_node {int dummy; } ;


 struct platform_device* of_find_device_by_node (struct device_node*) ;

unsigned int irq_of_parse_and_map(struct device_node *node, int index)
{
 struct platform_device *op = of_find_device_by_node(node);

 if (!op || index >= op->archdata.num_irqs)
  return 0;

 return op->archdata.irqs[index];
}
