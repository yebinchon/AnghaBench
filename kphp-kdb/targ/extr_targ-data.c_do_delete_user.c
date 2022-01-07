
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_delete_user {int dummy; } ;


 int LEV_TARG_DELUSER ;
 struct lev_delete_user* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_user_id (int) ;
 int delete_user (struct lev_delete_user*) ;

int do_delete_user (int user_id) {
  if (conv_user_id (user_id) < 0) {
    return 0;
  }
  struct lev_delete_user *E = alloc_log_event (LEV_TARG_DELUSER, 8, user_id);
  return delete_user (E);
}
