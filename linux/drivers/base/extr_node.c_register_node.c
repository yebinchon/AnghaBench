
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int groups; int release; int * bus; } ;
struct node {TYPE_1__ dev; } ;


 int compaction_register_node (struct node*) ;
 int device_register (TYPE_1__*) ;
 int hugetlb_register_node (struct node*) ;
 int node_dev_groups ;
 int node_device_release ;
 int node_subsys ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int register_node(struct node *node, int num)
{
 int error;

 node->dev.id = num;
 node->dev.bus = &node_subsys;
 node->dev.release = node_device_release;
 node->dev.groups = node_dev_groups;
 error = device_register(&node->dev);

 if (error)
  put_device(&node->dev);
 else {
  hugetlb_register_node(node);

  compaction_register_node(node);
 }
 return error;
}
