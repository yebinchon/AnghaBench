
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev; struct TYPE_3__* next; } ;
typedef TYPE_1__ olist_t ;



__attribute__((used)) static inline void online_list_clear (olist_t *head) {
  olist_t *tmp = head->next;
  while (tmp != head) {
    olist_t *tnext = tmp->next;
    tmp->next = tmp->prev = 0;
    tmp = tnext;
  }
  head->next = head->prev = head;
}
