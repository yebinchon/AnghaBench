
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int objects_n; int new_objects_n; int prm; int id_to_local_id; } ;
typedef TYPE_1__ data ;


 int PERM (int ,int *,int) ;
 int data_del (TYPE_1__*,int) ;
 scalar_t__ data_get_hidden_state (TYPE_1__*,int) ;
 int data_get_local_id_by_id (TYPE_1__*,int) ;
 int inc ;
 int lookup_set (int *,int,int) ;

int data_add_object (data *d, int id) {


  int local_id = data_get_local_id_by_id (d, id), is_hidden = 0;
  if (local_id != -1) {
    is_hidden = data_get_hidden_state (d, id) != 0;
    if (!is_hidden) {
      return -1;
    }
  }

  if (is_hidden) {
    data_del (d, id);
  }

  int res = d->objects_n + d->new_objects_n;
  lookup_set (&d->id_to_local_id, id, res);
  d->new_objects_n++;

  PERM (inc, &d->prm, 1);
  return res;
}
