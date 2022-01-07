
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct bcma_device {TYPE_1__ dev; int irq; } ;


 struct device_node* bcma_of_find_child_device (struct device*,struct bcma_device*) ;
 int bcma_of_get_irq (struct device*,struct bcma_device*,int ) ;
 int of_dma_configure (TYPE_1__*,struct device_node*,int) ;

__attribute__((used)) static void bcma_of_fill_device(struct device *parent,
    struct bcma_device *core)
{
 struct device_node *node;

 node = bcma_of_find_child_device(parent, core);
 if (node)
  core->dev.of_node = node;

 core->irq = bcma_of_get_irq(parent, core, 0);

 of_dma_configure(&core->dev, node, 0);
}
