
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


 int fprintf (int ,char*,...) ;
 int stderr ;

void dl_perm_list_dbg (dl_perm_list *p) {
  perm_list *st;
  for (st = p->v->r; st != p->v; st = st->r) {
    fprintf (stderr, "[%d,%d] ", st->a, st->b);
  }
  fprintf (stderr, "\n");
}
