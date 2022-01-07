
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int eFlags; } ;
struct TYPE_10__ {int watertype; TYPE_3__* client; scalar_t__ waterlevel; TYPE_1__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_11__ {scalar_t__ snd_fry; } ;
struct TYPE_8__ {scalar_t__ loopSound; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;


 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int EF_TICKING ;
 scalar_t__ G_SoundIndex (char*) ;
 TYPE_5__ level ;

void G_SetClientSound( gentity_t *ent ) {






 if (ent->waterlevel && (ent->watertype&(CONTENTS_LAVA|CONTENTS_SLIME)) ) {
  ent->client->ps.loopSound = level.snd_fry;
 } else {
  ent->client->ps.loopSound = 0;
 }
}
