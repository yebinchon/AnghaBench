
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uid; } ;
typedef TYPE_1__ user_t ;


 int add_user_word (int ,int ) ;
 int field_value_hash (int ,int) ;
 int max_group_id ;
 int min_group_id ;
 int q_grp_id ;
 int user_group_pairs ;

__attribute__((used)) static int add_user_group (user_t *U, int group_id) {
  if (group_id > max_group_id) {
    max_group_id = group_id;
  }
  if (group_id < min_group_id) {
    min_group_id = group_id;
  }

  add_user_word (U->uid, field_value_hash (q_grp_id, group_id));

  user_group_pairs++;

  return 1;
}
