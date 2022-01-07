
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* first; } ;
typedef TYPE_1__ recommend_user_t ;
struct TYPE_5__ {int owner; int place; int type; int action; struct TYPE_5__* next; } ;
typedef TYPE_2__ recommend_item_t ;


 int RECOMMEND_FIND_ITEM_DUPS_STEPS ;
 scalar_t__ get_user_f (int,int ) ;

__attribute__((used)) static recommend_item_t *recommend_item_f (int user_id, int type, int owner, int place, int action) {
  recommend_user_t *U = (recommend_user_t *) get_user_f (user_id, 0);
  if (U == ((void*)0)) {
    return ((void*)0);
  }
  int steps = RECOMMEND_FIND_ITEM_DUPS_STEPS;
  recommend_item_t *q = U->first;
  while (steps > 0 && q != (recommend_item_t *) U) {
    if (q->owner == owner && q->place == place && q->type == type && q->action == action) {
      return q;
    }
    q = q->next;
    steps--;
  }
  return ((void*)0);
}
