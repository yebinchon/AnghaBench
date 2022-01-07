
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nextthink; int think; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_5__ {scalar_t__ time; } ;


 scalar_t__ FRAMETIME ;
 TYPE_2__ level ;
 int target_laser_start ;

void SP_target_laser (gentity_t *self)
{

 self->think = target_laser_start;
 self->nextthink = level.time + FRAMETIME;
}
