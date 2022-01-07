
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object_old_n; long long* object_type_ids; int object_table; } ;
typedef TYPE_1__ user ;


 int check (TYPE_1__*,int) ;
 long long ltbl_get_rev (int *,int) ;

long long user_get_object_type_id (user *u, int local_id) {
  check (u, local_id);

  if (local_id <= u->object_old_n) {
    return u->object_type_ids[local_id];
  } else {
    return ltbl_get_rev (&u->object_table, local_id - u->object_old_n);
  }
}
