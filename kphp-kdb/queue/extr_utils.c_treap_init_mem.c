
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int treap_node ;
struct TYPE_3__ {int * r; struct TYPE_3__* l; } ;


 int allocated_nodes_cnt ;
 int assert (int) ;
 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc (int) ;
 TYPE_1__* free_nodes ;
 scalar_t__ free_nodes_cnt ;
 int treap_memory ;

void treap_init_mem (int n) {
  assert (free_nodes_cnt == 0);
  assert (n > 0);

  treap_memory -= dl_get_memory_used();
  free_nodes = dl_malloc (sizeof (treap_node) * n);
  assert (free_nodes != ((void*)0));
  treap_memory += dl_get_memory_used();

  allocated_nodes_cnt += n;
  free_nodes_cnt += n;

  int i;
  for (i = 0; i + 1 < n; i++) {
    free_nodes[i].l = &free_nodes[i + 1];
    free_nodes[i].r = ((void*)0);
  }
  free_nodes[n - 1].l = free_nodes[n - 1].r = ((void*)0);
}
