
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
 int immediate_mode ;
 int load_user_metafile (int *,int,int) ;
 int local_user_id (int) ;
 TYPE_2__ user_table ;
 int * users ;

user *conv_user_id (int user_id) {
  int local_id = local_user_id (user_id);
  if (local_id == -1) {
    return ((void*)0);
  }

  assert (local_id + 1 < user_table.to.size);

  user *u = &users[local_id];

  if (immediate_mode == 1) {
    assert (load_user_metafile (u, local_id, 1));
  }

  return u;
}
