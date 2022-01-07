
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ olist_t ;



__attribute__((used)) static inline void online_list_add_after (olist_t *where, olist_t *what) {
  what->prev = where;
  what->next = where->next;
  what->next->prev = what;
  where->next = what;
}
