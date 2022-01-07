
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_friend {int friend_id; } ;


 int LEV_FR_DEL_FRIENDREQ ;
 struct lev_del_friend* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int delete_friend_request (int ,int) ;
 int get_user (int) ;

int do_delete_friend_request (int user_id, int friend_id) {
  struct lev_del_friend *E;

  if (conv_uid (user_id) < 0 || friend_id <= 0) {
    return -1;
  }

  E = alloc_log_event (LEV_FR_DEL_FRIENDREQ, 12, user_id);
  E->friend_id = friend_id;

  return delete_friend_request (get_user (user_id), friend_id);
}
