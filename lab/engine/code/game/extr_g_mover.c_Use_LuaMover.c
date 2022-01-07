
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int think; int nextthink; struct TYPE_6__* activator; scalar_t__ client; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_7__ {int time; } ;


 int Think_LuaMover ;
 TYPE_2__ level ;

void Use_LuaMover( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 if (activator->client) {
  ent->activator = activator;
  ent->nextthink = level.time;
  ent->think = Think_LuaMover;
 }
}
