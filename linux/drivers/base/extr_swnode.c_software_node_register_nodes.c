
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct software_node {scalar_t__ name; } ;


 int software_node_register (struct software_node const*) ;
 int software_node_unregister_nodes (struct software_node const*) ;

int software_node_register_nodes(const struct software_node *nodes)
{
 int ret;
 int i;

 for (i = 0; nodes[i].name; i++) {
  ret = software_node_register(&nodes[i]);
  if (ret) {
   software_node_unregister_nodes(nodes);
   return ret;
  }
 }

 return 0;
}
