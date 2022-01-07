
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMA_NO_NODE ;
 int* pxm_to_node_map ;

int pxm_to_node(int pxm)
{
 if (pxm < 0)
  return NUMA_NO_NODE;
 return pxm_to_node_map[pxm];
}
