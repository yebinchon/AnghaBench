
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_rate {scalar_t__ type; int rate; int user_id; } ;


 scalar_t__ LEV_TARG_RATE ;
 int assert (int) ;
 int * get_user (int ) ;
 int rate_change (int *,int ) ;

void set_rate (struct lev_rate *E) {
  assert (E->type == LEV_TARG_RATE);
  user_t *U = get_user (E->user_id);
  if (U) {
    rate_change (U, E->rate);
  }
}
