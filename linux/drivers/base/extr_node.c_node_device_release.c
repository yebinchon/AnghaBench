
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int node_work; } ;
struct device {int dummy; } ;


 int flush_work (int *) ;
 int kfree (struct node*) ;
 struct node* to_node (struct device*) ;

__attribute__((used)) static void node_device_release(struct device *dev)
{
 struct node *node = to_node(dev);
 kfree(node);
}
