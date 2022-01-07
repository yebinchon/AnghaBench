
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n; scalar_t__ len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;
struct TYPE_4__ {struct TYPE_4__* r; } ;



int dl_perm_list_is_trivial (dl_perm_list *p) {
  return p->n == p->len && (p->v->r == p->v || p->v->r->r == p->v);
}
