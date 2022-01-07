
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* activator; } ;
typedef TYPE_1__ gentity_t ;


 int target_laser_think (TYPE_1__*) ;

void target_laser_on (gentity_t *self)
{
 if (!self->activator)
  self->activator = self;
 target_laser_think (self);
}
