
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node_reused; int of_node; } ;


 int of_node_get (int ) ;
 int of_node_put (int ) ;

void device_set_of_node_from_dev(struct device *dev, const struct device *dev2)
{
 of_node_put(dev->of_node);
 dev->of_node = of_node_get(dev2->of_node);
 dev->of_node_reused = 1;
}
