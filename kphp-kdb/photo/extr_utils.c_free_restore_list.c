
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vptr ;
typedef int restore_list ;


 int restore_list_free_rec (int *) ;

void free_restore_list (int *i, vptr *v) {
  restore_list *list = (restore_list *)*v;
  restore_list_free_rec (list);
}
