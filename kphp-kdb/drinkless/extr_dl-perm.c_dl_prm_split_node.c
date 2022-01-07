
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_9__ {int a; int b; int len; int y; } ;


 int assert (int ) ;
 TYPE_1__* dl_alloc_prm () ;
 int dl_prm_rev_add (TYPE_1__**,TYPE_1__*) ;
 int rand () ;

void dl_prm_split_node (dl_prm_ptr v, dl_prm_ptr *a, dl_prm_ptr *b, int x, dl_prm_ptr *rv) {
  x += v->a;
  if (x == v->a) {
    *a = ((void*)0);
    *b = v;
  } else if (x == v->b) {
    *a = v;
    *b = ((void*)0);
  } else if (v->a < x && x < v->b) {
    *b = dl_alloc_prm();
    (*b)->a = x;
    (*b)->b = v->b;
    (*b)->y = rand();
    (*b)->len = (*b)->b - (*b)->a;

    *a = v;
    (*a)->b = x;
    (*a)->len = (*a)->b - (*a)->a;

    dl_prm_rev_add (rv, *b);
  } else {
    assert (0);
  }
}
