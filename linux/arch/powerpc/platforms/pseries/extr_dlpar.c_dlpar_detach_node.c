
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_detach_node (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int of_node_put (struct device_node*) ;

int dlpar_detach_node(struct device_node *dn)
{
 struct device_node *child;
 int rc;

 child = of_get_next_child(dn, ((void*)0));
 while (child) {
  dlpar_detach_node(child);
  child = of_get_next_child(dn, child);
 }

 rc = of_detach_node(dn);
 if (rc)
  return rc;

 of_node_put(dn);

 return 0;
}
