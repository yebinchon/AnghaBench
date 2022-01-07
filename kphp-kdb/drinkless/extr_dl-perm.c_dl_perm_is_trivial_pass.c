
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n; scalar_t__ len; TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm ;
struct TYPE_4__ {int a; int * r; int * l; } ;



int dl_perm_is_trivial_pass (dl_perm *p, int pass_n) {
  return p->n == p->len + pass_n && (p->v == ((void*)0) || (p->v->l == ((void*)0) && p->v->r == ((void*)0) && p->v->a == pass_n));
}
