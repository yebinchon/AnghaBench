
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fr_tree; } ;
typedef TYPE_1__ user_t ;


 int R ;
 int R_cat_mask ;
 int R_end ;
 int R_mode ;
 scalar_t__ conv_uid (int) ;
 TYPE_1__* get_user (int) ;
 int tree_fetch (int ) ;

int prepare_friends (int user_id, int cat_mask, int mode) {
  user_t *U = get_user (user_id);
  if ((!U && conv_uid (user_id) < 0) || mode < 0 || mode > 2) {
    return -1;
  }
  R_end = R;
  if (!U) {
    return 0;
  }
  R_cat_mask = cat_mask;
  R_mode = mode;
  tree_fetch (U->fr_tree);
  return (R_end - R) / (mode + 1);
}
