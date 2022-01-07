
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_5__ {int* ammo; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;



void Add_Ammo (gentity_t *ent, int weapon, int count)
{

 if ( ent->client->ps.ammo[weapon] != -1 ) {
  ent->client->ps.ammo[weapon] += count;
  if ( ent->client->ps.ammo[weapon] > 200 ) {
   ent->client->ps.ammo[weapon] = 200;
  }
 }
}
