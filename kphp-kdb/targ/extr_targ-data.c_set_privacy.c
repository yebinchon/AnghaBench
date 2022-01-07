
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ privacy; } ;
typedef TYPE_1__ user_t ;
struct lev_generic {scalar_t__ b; int a; } ;


 scalar_t__ MAX_PRIVACY ;
 TYPE_1__* get_user (int ) ;

int set_privacy (struct lev_generic *E) {
  user_t *U = get_user (E->a);
  if (!U || E->b < 0 || E->b > MAX_PRIVACY) { return 0; }
  U->privacy = E->b;
  return 1;
}
