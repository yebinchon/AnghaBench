
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cute {int cute; } ;


 int LEV_TARG_CUTE ;
 struct lev_cute* alloc_log_event (int ,int,int) ;
 int get_user (int) ;
 int set_cute (struct lev_cute*) ;

int do_set_cute (int user_id, int cute) {
  if (!get_user (user_id)) { return 0; }
  struct lev_cute *E = alloc_log_event (LEV_TARG_CUTE, 12, user_id);
  E->cute = cute;
  set_cute (E);
  return 1;
}
