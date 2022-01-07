
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cat_mask; int fr_tree; } ;
typedef TYPE_1__ user_t ;


 int* LiA ;
 int* LiB ;
 int assert (int) ;
 int tree_set_catlist (int ,int) ;

__attribute__((used)) static int set_category_friend_list (user_t *U, int cat, int *List, int len) {
  int i;
  if (!U || cat <= 0 || cat >= 32 || (unsigned) len > 16384) {
    return -1;
  }
  assert (!len || List[0] > 0);
  for (i = 1; i < len; i++) {
    assert (List[i-1] < List[i]);
  }
  LiA = List;
  LiB = List + len;
  tree_set_catlist (U->fr_tree, 1 << cat);
  U->cat_mask |= (1 << cat);
  return 1;
}
