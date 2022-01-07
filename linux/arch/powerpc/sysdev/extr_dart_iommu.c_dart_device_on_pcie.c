
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_get_next_parent (struct device_node*) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool dart_device_on_pcie(struct device *dev)
{
 struct device_node *np = of_node_get(dev->of_node);

 while(np) {
  if (of_device_is_compatible(np, "U4-pcie") ||
      of_device_is_compatible(np, "u4-pcie")) {
   of_node_put(np);
   return 1;
  }
  np = of_get_next_parent(np);
 }
 return 0;
}
