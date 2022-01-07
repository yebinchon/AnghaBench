
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_id; } ;


 unsigned int MAX_USERS ;
 scalar_t__ MAX_USERS_NUM ;
 scalar_t__ NEGATIVE_USER_OFFSET ;
 int USERS_PRIME ;
 TYPE_1__** User ;
 int assert (int) ;
 int log_split_min ;
 int log_split_mod ;
 scalar_t__ tot_users ;

int conv_uid (int user_id) {
  int t = user_id % log_split_mod;
  if (!user_id || (t != log_split_min && t != -log_split_min)) {
    return -1;
  }
  user_id /= log_split_mod;
  if (user_id < 0 || t < 0) {
    user_id--;
  }
  user_id += NEGATIVE_USER_OFFSET;
  return (unsigned) user_id < MAX_USERS ? user_id : -1;

}
