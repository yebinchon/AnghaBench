
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wait; int random; scalar_t__ nextthink; int activator; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_6__ {scalar_t__ time; } ;


 int G_UseTargets (TYPE_1__*,int ) ;
 int crandom () ;
 TYPE_2__ level ;

void func_timer_think( gentity_t *self ) {
 G_UseTargets (self, self->activator);

 self->nextthink = level.time + 1000 * ( self->wait + crandom() * self->random );
}
