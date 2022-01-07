
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_groups {int* groups; } ;


 scalar_t__ LEV_TARG_GROUP_DEL ;
 struct lev_groups* alloc_log_event (scalar_t__,int,int) ;
 int del_groups (int *,int*,int) ;
 int * get_user (int) ;

int do_delete_user_group (int user_id, int group_id) {
  user_t *U = get_user (user_id);
  if (!U) {
    return 0;
  }

  struct lev_groups *E = alloc_log_event (LEV_TARG_GROUP_DEL + 1, 12, user_id);
  E->groups[0] = group_id;

  return del_groups (U, E->groups, 1);
}
