
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LEV_FR_DEL_CAT ;
 int alloc_log_event (scalar_t__,int,int) ;
 scalar_t__ conv_uid (int) ;
 int delete_friend_category (int ,int,int) ;
 int get_user (int) ;

int do_delete_friend_category (int user_id, int cat) {
  if (conv_uid (user_id) < 0 || cat <= 0 || cat > 30) {
    return -1;
  }
  alloc_log_event (LEV_FR_DEL_CAT+cat, 8, user_id);

  return delete_friend_category (get_user (user_id), cat, 1);
}
