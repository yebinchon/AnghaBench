
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* last; TYPE_2__* first; } ;
typedef TYPE_1__ recommend_user_t ;
struct TYPE_7__ {struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_2__ recommend_item_t ;


 int free_recommend_item (TYPE_2__*) ;

__attribute__((used)) static void remove_recommend_item_from_user_list (recommend_user_t *U, recommend_item_t *I) {
  if (U->first == I) {
    U->first = I->next;
  }
  if (U->last == I) {
    U->last = I->prev;
  }
  recommend_item_t *u = I->prev, *v = I->next;
  if (u != (recommend_item_t *) U) {
    u->next = v;
  }
  if (v != (recommend_item_t *) U) {
    v->prev = u;
  }
  free_recommend_item (I);
}
