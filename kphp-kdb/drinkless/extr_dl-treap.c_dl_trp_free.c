
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dl_trp_node_ptr ;
struct TYPE_4__ {struct TYPE_4__* l; struct TYPE_4__* r; } ;


 TYPE_1__* free_nodes ;
 int free_nodes_cnt ;

void dl_trp_free (dl_trp_node_ptr v) {
  if (v == ((void*)0)) {
    return;
  }
  dl_trp_free (v->l);
  dl_trp_free (v->r);
  v->r = ((void*)0);
  v->l = free_nodes;
  free_nodes = v;

  free_nodes_cnt++;
}
