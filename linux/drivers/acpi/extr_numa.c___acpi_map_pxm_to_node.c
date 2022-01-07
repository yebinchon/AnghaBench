
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMA_NO_NODE ;
 int PXM_INVAL ;
 int* node_to_pxm_map ;
 int* pxm_to_node_map ;

__attribute__((used)) static void __acpi_map_pxm_to_node(int pxm, int node)
{
 if (pxm_to_node_map[pxm] == NUMA_NO_NODE || node < pxm_to_node_map[pxm])
  pxm_to_node_map[pxm] = node;
 if (node_to_pxm_map[node] == PXM_INVAL || pxm < node_to_pxm_map[node])
  node_to_pxm_map[node] = pxm;
}
