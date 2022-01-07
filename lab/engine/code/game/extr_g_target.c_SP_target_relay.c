
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use; } ;
typedef TYPE_1__ gentity_t ;


 int target_relay_use ;

void SP_target_relay (gentity_t *self) {
 self->use = target_relay_use;
}
