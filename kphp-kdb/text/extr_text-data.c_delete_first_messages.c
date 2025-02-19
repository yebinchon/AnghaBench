
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_local_id; } ;
typedef TYPE_1__ user_t ;
struct file_user_list_entry {int user_last_local_id; } ;


 scalar_t__ conv_uid (int) ;
 TYPE_1__* get_user (int) ;
 struct file_user_list_entry* lookup_user_directory (int) ;

int delete_first_messages (int user_id, int first_local_id) {
  if (conv_uid (user_id) < 0 || first_local_id <= 0) {
    return -1;
  }
  user_t *U = get_user (user_id);
  if (U) {
    if (first_local_id > U->last_local_id + 1) {
      first_local_id = U->last_local_id + 1;
    }
  } else {
    struct file_user_list_entry *D = lookup_user_directory (user_id);
    if (!D) {
      return -1;
    }
    if (first_local_id > D->user_last_local_id + 1) {
      first_local_id = D->user_last_local_id + 1;
    }
  }

  return first_local_id;
}
