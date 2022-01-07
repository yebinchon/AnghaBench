
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user_id; scalar_t__ req_cnt; scalar_t__ fr_cnt; scalar_t__ pr_tree; scalar_t__ req_time_tree; scalar_t__ req_tree; scalar_t__ fr_tree; } ;
typedef TYPE_1__ user_t ;


 TYPE_1__** User ;
 int conv_uid (int) ;
 int free_friend_list (TYPE_1__*) ;
 int free_privacy_tree (scalar_t__) ;
 int free_tree (scalar_t__) ;
 int free_user_struct (TYPE_1__*) ;
 int ignored_delete_user_id ;
 int tot_users ;

__attribute__((used)) static int delete_user (int user_id) {
  int i = conv_uid (user_id);
  user_t *U;
  if (i < 0 || user_id == ignored_delete_user_id) {
    return -1;
  }
  if (!User[i]) {
    return 0;
  }
  U = User[i];
  User[i] = 0;


  free_friend_list (U);
  free_tree (U->req_tree);
  free_tree (U->req_time_tree);
  free_privacy_tree (U->pr_tree);

  U->fr_tree = 0;
  U->req_tree = 0;
  U->req_time_tree = 0;
  U->pr_tree = 0;
  U->fr_cnt = 0;
  U->req_cnt = 0;
  U->user_id = -1;

  free_user_struct (U);
  tot_users--;

  return 1;
}
