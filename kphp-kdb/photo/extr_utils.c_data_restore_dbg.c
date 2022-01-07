
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int restore_list ;
struct TYPE_3__ {int restore_info; } ;
typedef TYPE_1__ data ;


 int dbg (char*,int,int **) ;
 scalar_t__ map_int_vptr_get (int *,int) ;
 int restore_list_dbg (int *) ;

void data_restore_dbg (data *d, int v) {
  restore_list **list = (restore_list **)map_int_vptr_get (&d->restore_info, v);
  dbg ("list %d: %p\n", v, list);
  if (list != ((void*)0)) {
    restore_list_dbg (*list);
  }
}
