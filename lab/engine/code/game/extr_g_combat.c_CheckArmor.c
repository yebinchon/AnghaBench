
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_5__ {int* stats; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
typedef TYPE_3__ gclient_t ;


 int ARMOR_PROTECTION ;
 int DAMAGE_NO_ARMOR ;
 size_t STAT_ARMOR ;
 int ceil (int) ;

int CheckArmor (gentity_t *ent, int damage, int dflags)
{
 gclient_t *client;
 int save;
 int count;

 if (!damage)
  return 0;

 client = ent->client;

 if (!client)
  return 0;

 if (dflags & DAMAGE_NO_ARMOR)
  return 0;


 count = client->ps.stats[STAT_ARMOR];
 save = ceil( damage * ARMOR_PROTECTION );
 if (save >= count)
  save = count;

 if (!save)
  return 0;

 client->ps.stats[STAT_ARMOR] -= save;

 return save;
}
