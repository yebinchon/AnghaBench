
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; } ;
typedef TYPE_1__ restore_list ;


 int restore_list_connect (TYPE_1__*,TYPE_1__*) ;

void restore_list_append (restore_list *v, restore_list *to_append) {

  restore_list *to_append_prev = to_append->prev;
  restore_list_connect (v->prev, to_append);
  restore_list_connect (to_append_prev, v);
}
