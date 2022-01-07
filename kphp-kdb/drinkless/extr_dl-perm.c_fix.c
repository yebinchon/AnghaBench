
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_9__ {scalar_t__ b; scalar_t__ a; struct TYPE_9__* p; struct TYPE_9__* r; struct TYPE_9__* l; } ;


 int assert (int) ;
 int dl_free_prm (TYPE_1__*) ;
 int dl_prm_fix (TYPE_1__*) ;
 TYPE_1__* dl_prm_rev_del (TYPE_1__**,scalar_t__) ;

void fix (dl_prm_ptr *a, dl_prm_ptr *b, dl_prm_ptr *rv) {
  if (*a && *b) {
    while ((*a)->r) {
      a = &(*a)->r;
    }
    while ((*b)->l) {
      b = &(*b)->l;
    }
    if ((*a)->b == (*b)->a) {
      dl_prm_ptr tmp = *b;
      *b = tmp->r;

      (*a)->b = tmp->b;

      dl_prm_fix (tmp->p);
      assert (dl_prm_rev_del (rv, tmp->a) == tmp);
      dl_free_prm (tmp);

      dl_prm_fix (*a);
    }
  }
}
