
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_node_put (struct device_node*) ;
 int pSeries_reconfig_remove_node (struct device_node*) ;

__attribute__((used)) static int do_remove_node(char *buf)
{
 struct device_node *node;
 int rv = -ENODEV;

 if ((node = of_find_node_by_path(buf)))
  rv = pSeries_reconfig_remove_node(node);

 of_node_put(node);
 return rv;
}
