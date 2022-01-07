
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct TYPE_2__ {struct device_node const* of_node; } ;


 int dev_dbg (struct device*,char*,struct device_node const*,struct device_node const*) ;

__attribute__((used)) static int vexpress_config_node_match(struct device *dev, const void *data)
{
 const struct device_node *node = data;

 dev_dbg(dev, "Parent node %p, looking for %p\n",
   dev->parent->of_node, node);

 return dev->parent->of_node == node;
}
