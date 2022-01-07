
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int change_list ;
struct TYPE_3__ {struct TYPE_3__* next; } ;


 int assert (int) ;
 TYPE_1__* chg_list_free ;
 int chg_list_memory ;
 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc (int) ;

void chg_list_init_mem (int n) {
  assert (chg_list_free == ((void*)0));
  assert (n > 0);

  chg_list_memory -= dl_get_memory_used();
  chg_list_free = dl_malloc (sizeof (change_list) * n);
  assert (chg_list_free != ((void*)0));
  chg_list_memory += dl_get_memory_used();

  int i;
  for (i = 0; i + 1 < n; i++) {
    chg_list_free[i].next = &chg_list_free[i + 1];
  }
  chg_list_free[n - 1].next = ((void*)0);
}
