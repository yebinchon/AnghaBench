
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_add_friend {int friend_id; int cat; } ;


 int LEV_FR_ADD_FRIENDREQ ;
 int LEV_FR_NEW_FRIENDREQ ;
 int LEV_FR_REPLACE_FRIENDREQ ;
 int add_friend_request (int *,int,int,int) ;
 struct lev_add_friend* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int * get_user (int) ;
 int * get_user_f (int) ;

int do_add_friend_request (int user_id, int friend_id, int cat, int force) {
  user_t *U;
  if (conv_uid (user_id) < 0 || friend_id <= 0 || cat < 0 || (unsigned) force > 2) {
    return -1;
  }

  struct lev_add_friend *E = alloc_log_event (force ? (force > 1 ? LEV_FR_NEW_FRIENDREQ : LEV_FR_ADD_FRIENDREQ) : LEV_FR_REPLACE_FRIENDREQ, 16, user_id);
  E->friend_id = friend_id;
  E->cat = cat;

  U = (force ? get_user_f (user_id) : get_user (user_id));
  return add_friend_request (U, friend_id, cat, force);
}
