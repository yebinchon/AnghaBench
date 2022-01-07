
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conv_uid (int) ;
 int delete_user_by_idx (int ) ;
 scalar_t__ min_logevent_time ;
 scalar_t__ now ;

__attribute__((used)) static int delete_user (int user_id) {
  if (now < min_logevent_time) {
    return 0;
  }
  return delete_user_by_idx (conv_uid (user_id));
}
