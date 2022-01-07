
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ user ;


 int GET_USER_INFO (int ) ;
 int MEMORY_CHANGES_PERCENT ;
 int assert (TYPE_1__*) ;
 TYPE_1__* conv_user_id (int) ;
 int get_changes_memory () ;
 int get_local_user_id (int) ;
 int max_memory ;

int get_user_info (int user_id) {
  int local_user_id = get_local_user_id (user_id);
  if (local_user_id == -1) {
    return -3;
  }

  int result;
  if (local_user_id == 0) {
    result = -1;
  } else {
    user *cur_user = conv_user_id (user_id);
    assert (cur_user);

    result = GET_USER_INFO(cur_user->flags);
  }

  if (result == -1 && get_changes_memory() > max_memory * MEMORY_CHANGES_PERCENT) {
    result = -2;
  }

  return result;
}
