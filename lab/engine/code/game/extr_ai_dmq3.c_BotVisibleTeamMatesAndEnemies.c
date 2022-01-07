
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int client; int viewangles; int eye; int entitynum; int origin; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_9__ {int origin; int valid; } ;
typedef TYPE_2__ aas_entityinfo_t ;
struct TYPE_10__ {int maxclients; } ;


 int BotEntityInfo (int,TYPE_2__*) ;
 float BotEntityVisible (int ,int ,int ,int,int) ;
 scalar_t__ BotSameTeam (TYPE_1__*,int) ;
 int EntityCarriesFlag (TYPE_2__*) ;
 scalar_t__ Square (float) ;
 scalar_t__ VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_3__ level ;

void BotVisibleTeamMatesAndEnemies(bot_state_t *bs, int *teammates, int *enemies, float range) {
 int i;
 float vis;
 aas_entityinfo_t entinfo;
 vec3_t dir;

 if (teammates)
  *teammates = 0;
 if (enemies)
  *enemies = 0;
 for (i = 0; i < level.maxclients; i++) {
  if (i == bs->client)
   continue;

  BotEntityInfo(i, &entinfo);

  if (!entinfo.valid)
   continue;

  if (!EntityCarriesFlag(&entinfo))
   continue;

  VectorSubtract(entinfo.origin, bs->origin, dir);
  if (VectorLengthSquared(dir) > Square(range))
   continue;

  vis = BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, i);
  if (vis <= 0)
   continue;

  if (BotSameTeam(bs, i)) {
   if (teammates)
    (*teammates)++;
  }
  else {
   if (enemies)
    (*enemies)++;
  }
 }
}
