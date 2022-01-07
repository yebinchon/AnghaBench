
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int req_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {int cat; } ;
typedef TYPE_2__ tree_t ;


 TYPE_1__* get_user (int) ;
 TYPE_2__* tree_lookup (int ,int) ;

int get_friend_request_cat (int user_id, int friend_id) {
  user_t *U = get_user (user_id);
  if (!U || friend_id <= 0) {
    return -1;
  }
  tree_t *N = tree_lookup (U->req_tree, friend_id);
  return N ? N->cat : -1;
}
