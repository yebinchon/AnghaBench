
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int spawnflags; int wait; int random; int think; scalar_t__ nextthink; scalar_t__ touch; struct TYPE_11__* activator; TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_9__ {scalar_t__ sessionTeam; } ;
struct TYPE_10__ {TYPE_1__ sess; } ;


 scalar_t__ FRAMETIME ;
 int G_FreeEntity ;
 int G_UseTargets (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 int crandom () ;
 TYPE_6__ level ;
 int multi_wait ;

void multi_trigger( gentity_t *ent, gentity_t *activator ) {
 ent->activator = activator;
 if ( ent->nextthink ) {
  return;
 }

 if ( activator->client ) {
  if ( ( ent->spawnflags & 1 ) &&
   activator->client->sess.sessionTeam != TEAM_RED ) {
   return;
  }
  if ( ( ent->spawnflags & 2 ) &&
   activator->client->sess.sessionTeam != TEAM_BLUE ) {
   return;
  }
 }

 G_UseTargets (ent, ent->activator);

 if ( ent->wait > 0 ) {
  ent->think = multi_wait;
  ent->nextthink = level.time + ( ent->wait + ent->random * crandom() ) * 1000;
 } else {


  ent->touch = 0;
  ent->nextthink = level.time + FRAMETIME;
  ent->think = G_FreeEntity;
 }
}
