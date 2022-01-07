
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hidden_state; } ;
typedef TYPE_1__ data ;


 int lookup_conv (int *,int,int ) ;

int data_get_hidden_state (data *d, int id) {
  return lookup_conv (&d->hidden_state, id, 0);
}
