
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cute; } ;
typedef TYPE_1__ user_t ;
struct lev_ratecute {scalar_t__ type; int rate; int cute; int user_id; } ;


 scalar_t__ LEV_TARG_RATECUTE ;
 int assert (int) ;
 TYPE_1__* get_user (int ) ;
 int rate_change (TYPE_1__*,int ) ;

void set_rate_cute (struct lev_ratecute *E) {
  assert (E->type == LEV_TARG_RATECUTE);
  user_t *U = get_user (E->user_id);
  if (U) {
    U->cute = E->cute;
    rate_change (U, E->rate);
  }
}
