
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int restore_list ;
struct TYPE_3__ {int restore_info; } ;
typedef TYPE_1__ data ;


 scalar_t__ map_int_vptr_add (int *,int) ;
 int map_int_vptr_del (int *,int) ;
 scalar_t__ map_int_vptr_get (int *,int) ;
 int * restore_list_alloc (int) ;
 int restore_list_append (int *,int *) ;

void data_restore_add (data *d, int id, int prev_id) {

  restore_list **prev_id_list_ptr = (restore_list **)map_int_vptr_add (&d->restore_info, prev_id);
  if (*prev_id_list_ptr == ((void*)0)) {
    *prev_id_list_ptr = restore_list_alloc (prev_id);
  }
  restore_list *prev_id_list = *prev_id_list_ptr;

  restore_list **id_list_ptr = (restore_list **) map_int_vptr_get (&d->restore_info, id);
  restore_list *id_list;
  if (id_list_ptr == ((void*)0)) {
    id_list = restore_list_alloc (id);
  } else {
    id_list = *id_list_ptr;
    map_int_vptr_del (&d->restore_info, id);
  }

  restore_list_append (prev_id_list, id_list);
}
