
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int user ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ to; } ;


 int assert (int) ;
 int local_uid (int) ;
 TYPE_2__ user_table ;
 int * users ;

user *conv_uid (int user_id) {
  int local_id = local_uid (user_id);
  if (local_id == -1) {
    return ((void*)0);
  }

  assert (local_id < user_table.to.size);
  return &users[local_id];
}
