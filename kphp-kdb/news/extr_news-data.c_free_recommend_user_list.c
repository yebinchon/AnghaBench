
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ total_items; TYPE_2__* last; TYPE_2__* first; } ;
typedef TYPE_1__ recommend_user_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ recommend_item_t ;


 int RECOMMEND_MODE ;
 int assert (int) ;
 int free_recommend_item (TYPE_2__*) ;

__attribute__((used)) static void free_recommend_user_list (recommend_user_t *U) {
  assert (RECOMMEND_MODE);
  recommend_item_t *p = U->first, *q;
  while (p != (recommend_item_t *) U) {
    q = p->next;
    U->total_items--;
    assert (U->total_items >= 0);
    free_recommend_item (p);
    p = q;
  }
  assert (!U->total_items);
  U->first = U->last = (recommend_item_t *) U;
}
