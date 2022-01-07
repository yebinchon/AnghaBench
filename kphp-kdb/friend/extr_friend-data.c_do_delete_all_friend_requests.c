
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_FR_DELALL_REQ ;
 int alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int delete_all_friend_requests (int ) ;
 int get_user (int) ;

int do_delete_all_friend_requests (int user_id) {

  if (conv_uid (user_id) < 0) {
    return -1;
  }

  alloc_log_event (LEV_FR_DELALL_REQ, 8, user_id);

  return delete_all_friend_requests (get_user (user_id));
}
