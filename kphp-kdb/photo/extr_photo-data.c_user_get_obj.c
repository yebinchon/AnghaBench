
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int data ;
struct TYPE_4__ {int deleted; } ;
typedef TYPE_1__ actual_object ;


 scalar_t__ data_get_actual_object (int *,int,TYPE_1__*) ;
 int data_get_hidden_state (int *,int) ;
 int data_get_local_id_by_id (int *,int) ;

inline int user_get_obj (data *d, int id, const int force, actual_object *o) {
  int local_id = data_get_local_id_by_id (d, id);
  if (local_id < 0 || ((o->deleted = data_get_hidden_state (d, id)) != 0 && !force) || data_get_actual_object (d, local_id, o) < 0) {
    return -1;
  }
  return 0;
}
