
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cute; } ;
typedef TYPE_1__ user_t ;
struct lev_cute {scalar_t__ type; int cute; int user_id; } ;


 scalar_t__ LEV_TARG_CUTE ;
 int assert (int) ;
 TYPE_1__* get_user (int ) ;

void set_cute (struct lev_cute *E) {
  assert (E->type == LEV_TARG_CUTE);
  user_t *U = get_user (E->user_id);
  if (U) {
    U->cute = E->cute;
  }
}
