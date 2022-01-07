
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int online_tree; } ;
typedef TYPE_1__ user_t ;


 int R ;
 int RA ;
 int R_cnt ;
 int adjust_online_tree (TYPE_1__*) ;
 scalar_t__ conv_uid (int) ;
 int fetch_online_tree (int ,int) ;
 TYPE_1__* get_user (int) ;
 int sort_res (int ,int) ;
 int sort_res2 (int ,int) ;

int get_online_friends (int user_id, int mode) {
  user_t *U = get_user (user_id);
  R_cnt = 0;
  if (!U) {
    return conv_uid (user_id) < 0 ? -1 : 0;
  }
  RA = R;
  adjust_online_tree (U);
  fetch_online_tree (U->online_tree, mode);
  R_cnt = RA - R;
  if (mode) {
    sort_res2 (0, (R_cnt >> 1) - 1);
    return R_cnt >> 1;
  } else {
    sort_res (0, R_cnt - 1);
    return R_cnt;
  }
}
