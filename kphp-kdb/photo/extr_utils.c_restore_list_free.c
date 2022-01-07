
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int restore_list ;


 int assert (int ) ;
 int dl_free (int *,int) ;
 int restore_list_is_empty (int *) ;

void restore_list_free (restore_list *v) {
  if (v == ((void*)0)) {
    return;
  }
  assert (restore_list_is_empty (v));
  dl_free (v, sizeof (*v));
}
