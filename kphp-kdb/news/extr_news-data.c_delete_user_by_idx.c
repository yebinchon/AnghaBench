
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user_id; } ;
typedef TYPE_1__ user_t ;
typedef int recommend_user_t ;
typedef int notify_user_t ;


 scalar_t__ NOTIFY_MODE ;
 int RECOMMEND_MODE ;
 scalar_t__ UG_MODE ;
 TYPE_1__** User ;
 int assert (int) ;
 int free_item_list (TYPE_1__*) ;
 int free_notify_user_list (int *) ;
 int free_recommend_user_list (int *) ;
 int free_user_struct (TYPE_1__*) ;
 int tot_users ;

__attribute__((used)) static int delete_user_by_idx (int i) {
  if (i < 0) {
    return -1;
  }
  user_t *U = User[i];
  if (!U) {
    return 0;
  }
  User[i] = 0;

  U->user_id = -1;

  assert (UG_MODE || NOTIFY_MODE || RECOMMEND_MODE);
  if (UG_MODE) {
    free_item_list (U);
  } else if (NOTIFY_MODE) {
    free_notify_user_list ((notify_user_t *) U);
  } else {
    assert (RECOMMEND_MODE);
    free_recommend_user_list ((recommend_user_t *) U);
  }

  free_user_struct (U);
  tot_users--;
  return 1;
}
