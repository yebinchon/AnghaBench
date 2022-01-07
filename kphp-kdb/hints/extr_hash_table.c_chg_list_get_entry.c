
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* change_list_ptr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int assert (int ) ;
 TYPE_1__* chg_list_free ;
 int chg_list_init_mem (int) ;

change_list_ptr chg_list_get_entry (void) {
  if (chg_list_free == ((void*)0)) {
    chg_list_init_mem (10000);
  }

  assert (chg_list_free != ((void*)0));

  change_list_ptr res = chg_list_free;
  chg_list_free = chg_list_free->next;
  res->next = ((void*)0);

  return res;
}
