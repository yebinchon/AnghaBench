
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dev; } ;


 int device_unregister (int *) ;
 int hugetlb_unregister_node (struct node*) ;
 int node_remove_accesses (struct node*) ;
 int node_remove_caches (struct node*) ;

void unregister_node(struct node *node)
{
 hugetlb_unregister_node(node);
 node_remove_accesses(node);
 node_remove_caches(node);
 device_unregister(&node->dev);
}
