
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; TYPE_2__* root; } ;
typedef TYPE_1__ wkey_set ;
typedef TYPE_2__* wkey_ptr ;
struct TYPE_9__ {int x; struct TYPE_9__* l; struct TYPE_9__* r; } ;


 int assert (int ) ;
 int free_wkey (TYPE_2__*) ;
 int trp_merge (TYPE_2__**,TYPE_2__*,TYPE_2__*) ;

void trp_del (wkey_set *tr, int x) {
  wkey_ptr *v = &tr->root;

  while (*v != ((void*)0)) {
    if ((*v)->x == x) {
      wkey_ptr t = *v;
      trp_merge (v, t->l, t->r);

      free_wkey (t);
      tr->size--;

      return;
    } else if ((*v)->x > x) {
      v = &(*v)->r;
    } else if ((*v)->x < x) {
      v = &(*v)->l;
    }
  }
  assert (0);
}
