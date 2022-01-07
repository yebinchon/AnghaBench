
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_ratecute {int rate; int cute; } ;


 int LEV_TARG_RATECUTE ;
 struct lev_ratecute* alloc_log_event (int ,int,int) ;
 int get_user (int) ;
 int set_rate_cute (struct lev_ratecute*) ;

int do_set_rate_cute (int user_id, int rate, int cute) {
  if (!get_user (user_id)) { return 0; }
  struct lev_ratecute *E = alloc_log_event (LEV_TARG_RATECUTE, 16, user_id);
  E->rate = rate;
  E->cute = cute;
  set_rate_cute (E);
  return 1;
}
