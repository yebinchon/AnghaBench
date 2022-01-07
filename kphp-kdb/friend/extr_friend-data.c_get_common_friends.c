
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_FRIENDS ;
 int assert (int) ;
 int rev_friends ;
 int rev_friends_find (int ,int) ;
 int rev_friends_intersect_constructive (int ,int const,int*,int) ;
 scalar_t__ rev_friends_intersect_len ;
 scalar_t__ rev_friends_intersect_pos ;

int get_common_friends (int user_id, int user_num, const int *userlist, int *resultlist, int max_result) {
  rev_friends_intersect_len = 0;
  rev_friends_find (rev_friends, user_id);
  assert (rev_friends_intersect_len <= MAX_FRIENDS);
  rev_friends_intersect_pos = 0;
  return rev_friends_intersect_constructive (rev_friends, userlist[0], resultlist, max_result);
}
