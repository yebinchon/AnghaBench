
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ req_cnt; void* req_time_tree; void* req_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_6__ {int date; } ;
typedef TYPE_2__ tree_t ;


 int assert (int) ;
 void* tree_delete (void*,int) ;
 TYPE_2__* tree_lookup (void*,int) ;

__attribute__((used)) static int delete_friend_request (user_t *U, int friend_id) {
  tree_t *P;
  if (!U || friend_id <= 0) {
    return -1;
  }
  P = tree_lookup (U->req_tree, friend_id);
  if (P) {
    int date = P->date;
    U->req_tree = tree_delete (U->req_tree, friend_id);
    U->req_time_tree = tree_delete (U->req_time_tree, -date);
    U->req_cnt--;
    assert (U->req_cnt >= 0);
    return 1;
  }
  return 0;
}
