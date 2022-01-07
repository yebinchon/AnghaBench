
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_get_next_parent (struct device_node*) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char const*,scalar_t__*) ;

__attribute__((used)) static void vexpress_config_find_prop(struct device_node *node,
  const char *name, u32 *val)
{

 *val = 0;

 of_node_get(node);
 while (node) {
  if (of_property_read_u32(node, name, val) == 0) {
   of_node_put(node);
   return;
  }
  node = of_get_next_parent(node);
 }
}
