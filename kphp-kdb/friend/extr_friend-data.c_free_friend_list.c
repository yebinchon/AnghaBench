
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fr_cnt; scalar_t__ fr_tree; int user_id; } ;
typedef TYPE_1__ user_t ;


 int free_tree (scalar_t__) ;
 int rev_friends ;
 int rev_friends_delete_tree (int ,int ,scalar_t__) ;
 scalar_t__ reverse_friends_mode ;

__attribute__((used)) static int free_friend_list (user_t *U) {
  if (!U) { return 0; }
  if (reverse_friends_mode) {
    rev_friends = rev_friends_delete_tree (rev_friends, U->user_id, U->fr_tree);
  }
  free_tree (U->fr_tree);
  U->fr_tree = 0;
  U->fr_cnt = 0;
  return 1;
}
