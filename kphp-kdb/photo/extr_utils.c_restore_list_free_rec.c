
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ restore_list ;


 int dl_free (TYPE_1__*,int) ;

void restore_list_free_rec (restore_list *v) {

  restore_list *end = v;
  do {
    restore_list *next = v->next;
    dl_free (v, sizeof (*v));
    v = next;
  } while (v != end);
}
