
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* r; } ;
typedef TYPE_1__ perm_list ;
struct TYPE_6__ {TYPE_1__* v; } ;
typedef TYPE_2__ dl_perm_list ;


 int list_free (TYPE_1__*) ;

void dl_perm_list_free (dl_perm_list *p) {
  perm_list *st = p->v, *v = st;
  do {
    perm_list *t = v;
    v = v->r;
    list_free (t);
  } while (v != st);
}
