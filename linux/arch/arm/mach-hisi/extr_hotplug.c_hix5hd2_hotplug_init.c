
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ctrl_base ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool hix5hd2_hotplug_init(void)
{
 struct device_node *np;

 np = of_find_compatible_node(((void*)0), ((void*)0), "hisilicon,cpuctrl");
 if (!np)
  return 0;

 ctrl_base = of_iomap(np, 0);
 of_node_put(np);
 if (!ctrl_base)
  return 0;

 return 1;
}
