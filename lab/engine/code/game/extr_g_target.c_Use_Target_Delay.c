
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wait; int random; struct TYPE_6__* activator; int think; scalar_t__ nextthink; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_7__ {scalar_t__ time; } ;


 int Think_Target_Delay ;
 int crandom () ;
 TYPE_2__ level ;

void Use_Target_Delay( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 ent->nextthink = level.time + ( ent->wait + ent->random * crandom() ) * 1000;
 ent->think = Think_Target_Delay;
 ent->activator = activator;
}
