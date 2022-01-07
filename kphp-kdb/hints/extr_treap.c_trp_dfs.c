
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* trp_node_ptr ;
struct TYPE_3__ {struct TYPE_3__* l; int x; struct TYPE_3__* r; } ;



int trp_dfs (trp_node_ptr v, int *res) {
  int *beg = res;
  if (v != ((void*)0)) {
    res += trp_dfs (v->r, res);
    *res++ = v->x;
    res += trp_dfs (v->l, res);
  }
  return res - beg;
}
