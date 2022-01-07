
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * cbe_local_mask ;
 int cpumask_first (int *) ;

u32 cbe_node_to_cpu(int node)
{
 return cpumask_first(&cbe_local_mask[node]);

}
