
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_hints_set_user_rating_state {int user_id; } ;


 scalar_t__ LEV_HINTS_SET_USER_RATING_STATE ;
 struct lev_hints_set_user_rating_state* alloc_log_event (scalar_t__,int,int) ;
 int user_set_rating_state (struct lev_hints_set_user_rating_state*) ;

int do_set_user_rating_state (int user_id, int state) {
  if (state >= 2 || state < 0) {
    return 0;
  }

  struct lev_hints_set_user_rating_state *E =
    alloc_log_event (LEV_HINTS_SET_USER_RATING_STATE + state, sizeof (struct lev_hints_set_user_rating_state), user_id);

  E->user_id = user_id;

  return user_set_rating_state (E);
}
