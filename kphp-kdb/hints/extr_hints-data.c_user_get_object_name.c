
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object_old_n; int* object_indexes; char* object_data; char** object_names; } ;
typedef TYPE_1__ user ;


 int MEM_FLAG ;
 int check (TYPE_1__*,int) ;

char *user_get_object_name (user *u, int local_id) {
  check (u, local_id);

  if (local_id <= u->object_old_n) {
    if (u->object_indexes[local_id] & MEM_FLAG) {
      return *((char **)(u->object_data + (u->object_indexes[local_id] & ~MEM_FLAG)));
    } else {
      return (u->object_data + u->object_indexes[local_id]);
    }
  } else {
    return u->object_names[local_id - u->object_old_n];
  }
}
