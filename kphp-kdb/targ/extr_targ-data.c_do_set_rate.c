
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_rate {int rate; } ;


 int LEV_TARG_RATE ;
 struct lev_rate* alloc_log_event (int ,int,int) ;
 int get_user (int) ;
 int set_rate (struct lev_rate*) ;

int do_set_rate (int user_id, int rate) {
  if (!get_user (user_id)) { return 0; }
  struct lev_rate *E = alloc_log_event (LEV_TARG_RATE, 12, user_id);
  E->rate = rate;
  set_rate (E);
  return 1;
}
