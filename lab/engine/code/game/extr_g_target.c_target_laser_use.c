
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nextthink; struct TYPE_7__* activator; } ;
typedef TYPE_1__ gentity_t ;


 int target_laser_off (TYPE_1__*) ;
 int target_laser_on (TYPE_1__*) ;

void target_laser_use (gentity_t *self, gentity_t *other, gentity_t *activator)
{
 self->activator = activator;
 if ( self->nextthink > 0 )
  target_laser_off (self);
 else
  target_laser_on (self);
}
