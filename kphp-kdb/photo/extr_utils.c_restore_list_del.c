
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int val; struct TYPE_11__* next; struct TYPE_11__* prev; } ;
typedef TYPE_1__ restore_list ;


 int restore_list_connect (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* restore_list_create_node (TYPE_1__*,TYPE_1__*,int) ;
 int restore_list_free (TYPE_1__*) ;

int restore_list_del (restore_list *v, int needed_id, restore_list **before_id, restore_list **after_id, int *prev_id) {


  restore_list *i = v->next;

  while (i != v) {
    if (i->val == needed_id) {
      *prev_id = v->val;

      if (i->next != v) {
        *after_id = restore_list_create_node (v->prev, i->next, needed_id);
      } else {
        *after_id = ((void*)0);
      }
      restore_list_connect (i->prev, v);
      *before_id = v;

      restore_list_connect (i, i);

      restore_list_free (i);

      return 1;
    }
    i = i->next;
  }
  return 0;
}
