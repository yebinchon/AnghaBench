
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ giType; } ;
typedef TYPE_2__ gitem_t ;
struct TYPE_9__ {int generic1; int id; } ;
struct TYPE_11__ {double physicsBounce; int spawnflags; TYPE_1__ s; int speed; int think; scalar_t__ nextthink; TYPE_2__* item; int id; int wait; int random; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;


 int FRAMETIME ;
 int FinishSpawningItem ;
 scalar_t__ G_ItemDisabled (TYPE_2__*) ;
 int G_SoundIndex (char*) ;
 int G_SpawnFloat (char*,char*,int *) ;
 scalar_t__ IT_PERSISTANT_POWERUP ;
 scalar_t__ IT_POWERUP ;
 int RegisterItem (TYPE_2__*) ;
 TYPE_4__ level ;

void G_SpawnItem (gentity_t *ent, gitem_t *item) {
 G_SpawnFloat( "random", "0", &ent->random );
 G_SpawnFloat( "wait", "0", &ent->wait );
 ent->s.id = ent->id;

 RegisterItem( item );
 if ( G_ItemDisabled(item) )
  return;

 ent->item = item;


 ent->nextthink = level.time + FRAMETIME * 2;
 ent->think = FinishSpawningItem;

 ent->physicsBounce = 0.50;

 if ( item->giType == IT_POWERUP ) {
  G_SoundIndex( "sound/items/poweruprespawn.wav" );
  G_SpawnFloat( "noglobalsound", "0", &ent->speed);
 }






}
