
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_NUMNODES ;
 int MAX_PXM_DOMAINS ;
 int NUMA_NO_NODE ;
 int __acpi_map_pxm_to_node (int,int) ;
 int first_unset_node (int ) ;
 int node_set (int,int ) ;
 int nodes_found_map ;
 scalar_t__ nodes_weight (int ) ;
 scalar_t__ numa_off ;
 int* pxm_to_node_map ;

int acpi_map_pxm_to_node(int pxm)
{
 int node;

 if (pxm < 0 || pxm >= MAX_PXM_DOMAINS || numa_off)
  return NUMA_NO_NODE;

 node = pxm_to_node_map[pxm];

 if (node == NUMA_NO_NODE) {
  if (nodes_weight(nodes_found_map) >= MAX_NUMNODES)
   return NUMA_NO_NODE;
  node = first_unset_node(nodes_found_map);
  __acpi_map_pxm_to_node(pxm, node);
  node_set(node, nodes_found_map);
 }

 return node;
}
