
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int ERROR_CTRL ;
 int HI3620_CTRL ;
 int ctrl_base ;
 int id ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int hi3xxx_hotplug_init(void)
{
 struct device_node *node;

 node = of_find_compatible_node(((void*)0), ((void*)0), "hisilicon,sysctrl");
 if (!node) {
  id = ERROR_CTRL;
  return -ENOENT;
 }

 ctrl_base = of_iomap(node, 0);
 of_node_put(node);
 if (!ctrl_base) {
  id = ERROR_CTRL;
  return -ENOMEM;
 }

 id = HI3620_CTRL;
 return 0;
}
