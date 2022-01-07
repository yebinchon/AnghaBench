
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_id; scalar_t__ fr_cnt; int fr_tree; } ;
typedef TYPE_1__ user_t ;
typedef int tree_t ;


 int assert (int) ;
 int fprintf (int ,char*,int,int) ;
 int rev_friends ;
 int rev_friends_delete (int ,int,int) ;
 scalar_t__ reverse_friends_mode ;
 int stderr ;
 int tree_delete (int ,int) ;
 int * tree_lookup (int ,int) ;
 int verbosity ;

__attribute__((used)) static int delete_friend (user_t *U, int friend_id) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  if (verbosity >= 4) {
    fprintf (stderr, "delete_friend. user_id = %d, friend_id = %d\n", U->user_id, friend_id);
  }
  P = tree_lookup (U->fr_tree, friend_id);
  if (P) {
    U->fr_tree = tree_delete (U->fr_tree, friend_id);
    U->fr_cnt--;
    assert (U->fr_cnt >= 0);
    if (reverse_friends_mode) {
      rev_friends = rev_friends_delete (rev_friends, friend_id, U->user_id);
    }
    return 1;
  }
  return 0;
}
