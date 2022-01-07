
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_NEWS_USERDEL ;
 int alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int delete_user (int) ;

int do_delete_user (int user_id) {
  if (conv_uid (user_id) < 0) {
    return -1;
  }
  alloc_log_event (LEV_NEWS_USERDEL, 8, user_id);
  return delete_user (user_id);
}
