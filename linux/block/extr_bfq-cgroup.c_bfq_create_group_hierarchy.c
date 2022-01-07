
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * service_tree; } ;
struct bfq_group {TYPE_1__ sched_data; } ;
struct bfq_data {int dummy; } ;


 int BFQ_IOPRIO_CLASSES ;
 int BFQ_SERVICE_TREE_INIT ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 struct bfq_group* kmalloc_node (int,int,int) ;

struct bfq_group *bfq_create_group_hierarchy(struct bfq_data *bfqd, int node)
{
 struct bfq_group *bfqg;
 int i;

 bfqg = kmalloc_node(sizeof(*bfqg), GFP_KERNEL | __GFP_ZERO, node);
 if (!bfqg)
  return ((void*)0);

 for (i = 0; i < BFQ_IOPRIO_CLASSES; i++)
  bfqg->sched_data.service_tree[i] = BFQ_SERVICE_TREE_INIT;

 return bfqg;
}
