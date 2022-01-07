
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* cluster_hotplug_mask ;
 int cluster_masks ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc_node (int,int ,int) ;
 scalar_t__ per_cpu (int ,unsigned int) ;

__attribute__((used)) static int alloc_clustermask(unsigned int cpu, int node)
{
 if (per_cpu(cluster_masks, cpu))
  return 0;




 if (cluster_hotplug_mask) {
  if (cluster_hotplug_mask->node == node)
   return 0;
  kfree(cluster_hotplug_mask);
 }

 cluster_hotplug_mask = kzalloc_node(sizeof(*cluster_hotplug_mask),
         GFP_KERNEL, node);
 if (!cluster_hotplug_mask)
  return -ENOMEM;
 cluster_hotplug_mask->node = node;
 return 0;
}
