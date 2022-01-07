
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_t ;
struct TYPE_3__ {int user_id; int first_local_id; } ;


 TYPE_1__** User ;
 int* UserMsgCnt ;
 int assert (int) ;
 int conv_uid (int) ;
 int discarded_rec ;
 scalar_t__ ignore_delete_first_messages ;
 int tot_users ;
 TYPE_1__* zmalloc0 (int) ;

void delete_first_messages0 (int user_id, int first_local_id) {
  int uid = conv_uid (user_id);
  if (uid < 0 || ignore_delete_first_messages) {
    discarded_rec++;
    return;
  }
  assert (first_local_id > 0 && first_local_id <= UserMsgCnt[uid] + 1);
  if (!User[uid]) {
    User[uid] = zmalloc0 (sizeof (user_t));
    User[uid]->user_id = user_id;
    tot_users++;
  }
  if (User[uid]->first_local_id < first_local_id) {
    User[uid]->first_local_id = first_local_id;
  }
}
