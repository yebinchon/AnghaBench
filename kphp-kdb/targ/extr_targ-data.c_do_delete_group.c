
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_delete_group {int dummy; } ;


 int LEV_TARG_DELGROUP ;
 struct lev_delete_group* alloc_log_event (int ,int,int) ;
 int delete_group (struct lev_delete_group*) ;

int do_delete_group (int group_id) {
  struct lev_delete_group *E = alloc_log_event (LEV_TARG_DELGROUP, 8, group_id);
  return delete_group (E);
}
