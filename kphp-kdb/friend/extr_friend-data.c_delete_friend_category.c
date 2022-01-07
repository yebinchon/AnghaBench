
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cat_ver; int cat_mask; int fr_tree; } ;
typedef TYPE_1__ user_t ;


 int tree_clean_cat (int ,int) ;

__attribute__((used)) static int delete_friend_category (user_t *U, int cat, int op) {
  if (!U || cat <= 0 || cat >= 32) {
    return -1;
  }
  tree_clean_cat (U->fr_tree, ~(1 << cat));
  if (op) {
    U->cat_ver[cat] += 0x100;
    U->cat_mask &= ~(1 << cat);
  }
  return 1;
}
