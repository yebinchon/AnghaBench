
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ olist_t ;
struct TYPE_6__ {TYPE_1__* prev; } ;
struct TYPE_5__ {TYPE_2__* next; } ;



__attribute__((used)) static inline void online_list_remove (olist_t *what) {
  what->next->prev = what->prev;
  what->prev->next = what->next;
}
