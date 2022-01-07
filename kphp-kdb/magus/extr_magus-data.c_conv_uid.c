
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int local_id; } ;
typedef TYPE_1__ user ;


 int assert (int) ;
 int cur_local_id ;
 int h_users ;
 scalar_t__ hset_intp_add (int *,int*) ;
 int log_split_min ;
 int log_split_mod ;
 int user_cnt ;
 TYPE_1__* users ;

user *conv_uid (int user_id) {
  if (user_id <= 0) {
    return ((void*)0);
  }
  if (user_id % log_split_mod != log_split_min) {
    return ((void*)0);
  }
  user **u = (user **)hset_intp_add (&h_users, &user_id);
  if (*u == (user *)&user_id) {
    assert (cur_local_id + 1 < user_cnt);

    *u = &users[++cur_local_id];
    (*u)->id = user_id;
    (*u)->local_id = cur_local_id;
  }
  return *u;
}
