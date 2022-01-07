
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* parent; } ;


 int * of_find_property (struct device_node*,char*,int *) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;

int of_bus_sbus_match(struct device_node *np)
{
 struct device_node *dp = np;

 while (dp) {
  if (of_node_name_eq(dp, "sbus") ||
      of_node_name_eq(dp, "sbi"))
   return 1;






  if (of_find_property(dp, "ranges", ((void*)0)) != ((void*)0))
   break;

  dp = dp->parent;
 }

 return 0;
}
