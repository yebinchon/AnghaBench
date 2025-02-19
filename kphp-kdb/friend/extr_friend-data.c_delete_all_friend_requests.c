
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ req_cnt; scalar_t__ req_time_tree; scalar_t__ req_tree; } ;
typedef TYPE_1__ user_t ;


 int free_tree (scalar_t__) ;

__attribute__((used)) static int delete_all_friend_requests (user_t *U) {
  if (!U) {
    return -1;
  }
  free_tree (U->req_tree);
  free_tree (U->req_time_tree);
  U->req_tree = 0;
  U->req_time_tree = 0;
  U->req_cnt = 0;
  return 1;
}
