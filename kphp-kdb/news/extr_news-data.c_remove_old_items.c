
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tot_items; TYPE_2__* last; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {int date; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef TYPE_2__ item_t ;


 int MAX_USER_ITEMS ;
 int UG_MODE ;
 int assert (int) ;
 int free_item (TYPE_2__*) ;
 int max_news_days ;
 int now ;

__attribute__((used)) static int remove_old_items (user_t *U) {
  assert (UG_MODE);
  int x = U->tot_items, y;
  if (!x) {
    return 0;
  }
  y = now - (max_news_days + 1) * 86400;

  item_t *p = U->last, *q;
  const int old_tot_items = x;
  while (p != (item_t *) U && (x > MAX_USER_ITEMS || p->date <= y)) {
    q = p->prev;
    free_item (p);
    x--;
    p = q;
  }
  U->last = p;
  p->next = (item_t *) U;
  U->tot_items = x;
  assert (U->tot_items >= 0);
  return old_tot_items - x;
}
