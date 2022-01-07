
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_1__ restore_list ;


 int restore_list_connect (TYPE_1__*,TYPE_1__*) ;
 int restore_list_free (TYPE_1__*) ;

restore_list *restore_list_pop_front (restore_list *v) {
  restore_list *res;
  if (v->next == v) {
    res = ((void*)0);
  } else {
    restore_list_connect (v->prev, v->next);
    res = v->next;
  }

  restore_list_connect (v, v);
  restore_list_free (v);
  return res;
}
