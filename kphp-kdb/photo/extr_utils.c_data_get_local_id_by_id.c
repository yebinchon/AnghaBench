
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id_to_local_id; } ;
typedef TYPE_1__ data ;


 int lookup_conv (int *,int,int) ;

int data_get_local_id_by_id (data *d, int id) {
  return lookup_conv (&d->id_to_local_id, id, -1);
}
