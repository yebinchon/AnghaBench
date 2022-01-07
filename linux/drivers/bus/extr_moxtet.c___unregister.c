
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;


 int OF_POPULATED ;
 int device_unregister (struct device*) ;
 int of_node_clear_flag (scalar_t__,int ) ;
 int of_node_put (scalar_t__) ;

__attribute__((used)) static int __unregister(struct device *dev, void *null)
{
 if (dev->of_node) {
  of_node_clear_flag(dev->of_node, OF_POPULATED);
  of_node_put(dev->of_node);
 }

 device_unregister(dev);

 return 0;
}
