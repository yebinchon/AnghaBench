
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_trp_node ;


 int allocated_nodes_cnt ;

size_t dl_trp_get_memory (void) {
  return allocated_nodes_cnt * sizeof (dl_trp_node);
}
