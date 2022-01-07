
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tot_items; TYPE_2__* last; TYPE_2__* first; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ item_t ;


 int UG_MODE ;
 int assert (int) ;
 int free_item (TYPE_2__*) ;

__attribute__((used)) static void free_item_list (user_t *U) {
  assert (UG_MODE);
  item_t *p = U->first, *q;
  while (p != (item_t *) U) {
    q = p->next;
    U->tot_items--;
    assert (U->tot_items >= 0);
    free_item (p);
    p = q;
  }
  assert (!U->tot_items);
  U->first = U->last = (item_t *) U;
}
