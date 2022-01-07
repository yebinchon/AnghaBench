
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nextthink; } ;
typedef TYPE_1__ gentity_t ;


 int trap_UnlinkEntity (TYPE_1__*) ;

void target_laser_off (gentity_t *self)
{
 trap_UnlinkEntity( self );
 self->nextthink = 0;
}
