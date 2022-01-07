
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int restore_list ;
struct TYPE_3__ {int restore_info; } ;
typedef TYPE_1__ data ;


 int assert (int) ;
 scalar_t__ map_int_vptr_add (int *,int) ;
 int map_int_vptr_del (int *,int) ;
 scalar_t__ map_int_vptr_get (int *,int) ;
 int * restore_list_alloc (int) ;
 int restore_list_append (int *,int *) ;
 int restore_list_is_empty (int *) ;
 int * restore_list_pop_front (int *) ;

void data_restore_append (data *d, int a, int b) {
  restore_list **b_list_ptr = (restore_list **)map_int_vptr_get (&d->restore_info, b);
  if (b_list_ptr != ((void*)0)) {
    restore_list *b_list = *b_list_ptr;
    assert (!restore_list_is_empty (b_list));

    restore_list **a_list_ptr = (restore_list **)map_int_vptr_add (&d->restore_info, a);
    if (*a_list_ptr == ((void*)0)) {
      *a_list_ptr = restore_list_alloc(a);
    }
    restore_list *a_list = *a_list_ptr;

    b_list = restore_list_pop_front (b_list);
    restore_list_append (a_list, b_list);

    map_int_vptr_del (&d->restore_info, b);
  }
}
