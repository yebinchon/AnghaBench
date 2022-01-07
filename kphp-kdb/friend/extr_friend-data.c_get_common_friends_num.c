
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_FRIENDS ;
 int assert (int) ;
 int rev_friends ;
 int rev_friends_find (int ,int) ;
 int rev_friends_intersect (int ,int const) ;
 scalar_t__ rev_friends_intersect_len ;
 scalar_t__ rev_friends_intersect_pos ;

void get_common_friends_num (int user_id, int user_num, const int *userlist, int *resultlist) {
  rev_friends_intersect_len = 0;
  rev_friends_find (rev_friends, user_id);
  assert (rev_friends_intersect_len <= MAX_FRIENDS);
  int i;
  for (i = 0; i < user_num; i++) {
    rev_friends_intersect_pos = 0;
    resultlist[i] = rev_friends_intersect (rev_friends, userlist[i]);
  }
}
