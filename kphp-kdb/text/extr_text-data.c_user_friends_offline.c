
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int online_tree; } ;
typedef TYPE_1__ user_t ;


 int FRIEND_MULT ;
 int MAX_USER_FRIENDS ;
 int adjust_online_tree (TYPE_1__*) ;
 TYPE_1__* get_user (int) ;
 scalar_t__ minsert_flag ;
 int stree_delete (int ,int) ;
 int update_history (TYPE_1__*,int,int ,int) ;

int user_friends_offline (int user_id, int N, int *A) {
  user_t *U;
  int i, x = user_id * FRIEND_MULT, c = 0;

  if (N < 0 || N > MAX_USER_FRIENDS || user_id <= 0) {
    return -1;
  }
  if (!N) {
    return 0;
  }

  for (i = 0; i < N; i++) {
    U = get_user (A[i]);
    if (!U) {
      continue;
    }
    c++;
    U->online_tree = stree_delete (U->online_tree, x);
    if (minsert_flag) {

      update_history (U, -user_id, 0, 9);
    }
    adjust_online_tree (U);
  }

  return c;
}
