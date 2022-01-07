
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int real_n; } ;
struct TYPE_4__ {TYPE_2__ hidden_state; } ;
typedef TYPE_1__ data ;


 int lookup_save_expected_len (TYPE_2__*) ;

int data_hide_expected_size (data *d) {



  return lookup_save_expected_len (&d->hidden_state);

}
