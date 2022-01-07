
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int b; struct TYPE_4__* r; } ;
typedef TYPE_1__ perm_list ;
struct TYPE_5__ {TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;



int dl_perm_list_get_rev_i (dl_perm_list *p, int i) {




  perm_list *v = p->v;
  int res = 0;
  while (i < v->a || i >= v->b) {
    res += v->b - v->a;
    v = v->r;
    if (v == p->v) {
      return -1;
    }
  }

  return res + i - v->a;
}
