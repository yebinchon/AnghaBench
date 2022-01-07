
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_generic {int dummy; } ;


 scalar_t__ LEV_TARG_INTERESTS_CLEAR ;
 unsigned int MAX_INTERESTS ;
 struct lev_generic* alloc_log_event (scalar_t__,int,int) ;
 int clear_interests (struct lev_generic*) ;
 int * get_user (int) ;

int do_delete_interests (int user_id, int type) {
  user_t *U = get_user (user_id);
  if (!U || (unsigned) type > MAX_INTERESTS) {
    return 0;
  }
  struct lev_generic *E = alloc_log_event (LEV_TARG_INTERESTS_CLEAR + type, 8, user_id);
  clear_interests (E);
  return 1;
}
