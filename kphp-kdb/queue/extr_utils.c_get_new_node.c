
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
struct TYPE_5__ {struct TYPE_5__* l; } ;
typedef TYPE_1__ treap_node ;


 int allocated_nodes_cnt ;
 int assert (int) ;
 TYPE_1__* free_nodes ;
 scalar_t__ free_nodes_cnt ;
 int treap_init_mem (int) ;

treap_node *get_new_node (void) {
  if (free_nodes_cnt == 0) {
    if (allocated_nodes_cnt < 10000) {
      if (allocated_nodes_cnt < 10) {
        treap_init_mem (10);
      } else {
        treap_init_mem (allocated_nodes_cnt);
      }
    } else {
      treap_init_mem (10000);
    }
  }

  free_nodes_cnt--;
  assert (free_nodes_cnt >= 0);

  treap_node_ptr res = free_nodes;
  free_nodes = free_nodes->l;
  res->l = ((void*)0);

  return res;
}
