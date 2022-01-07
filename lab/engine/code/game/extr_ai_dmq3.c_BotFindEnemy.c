
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_21__ {int fraction; scalar_t__ ent; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ lasthealth; scalar_t__* inventory; int client; scalar_t__ enemy; int enemysight_time; int enemysuicide; int enemyvisible_time; scalar_t__ entitynum; scalar_t__ enemydeath_time; int origin; int viewangles; int eye; int character; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_23__ {scalar_t__ entitynum; int origin; } ;
typedef TYPE_3__ bot_goal_t ;
struct TYPE_24__ {scalar_t__ number; int angles; int origin; int valid; } ;
typedef TYPE_4__ aas_entityinfo_t ;
struct TYPE_26__ {int flags; } ;
struct TYPE_25__ {int maxclients; } ;


 int BotAI_Trace (TYPE_1__*,int ,int *,int *,int*,int,int ) ;
 int BotEntityInfo (int,TYPE_4__*) ;
 float BotEntityVisible (scalar_t__,int ,int ,float,int) ;
 scalar_t__ BotSameTeam (TYPE_2__*,int) ;
 scalar_t__ BotTeam (TYPE_2__*) ;
 int BotUpdateBattleInventory (TYPE_2__*,int) ;
 scalar_t__ BotWantsToRetreat (TYPE_2__*) ;
 int CHARACTERISTIC_ALERTNESS ;
 int CHARACTERISTIC_EASY_FRAGGER ;
 int CONTENTS_SOLID ;
 scalar_t__ EntityCarriesFlag (TYPE_4__*) ;
 scalar_t__ EntityIsChatting (TYPE_4__*) ;
 scalar_t__ EntityIsDead (TYPE_4__*) ;
 scalar_t__ EntityIsInvisible (TYPE_4__*) ;
 scalar_t__ EntityIsShooting (TYPE_4__*) ;
 int FL_NOTARGET ;
 int FloatTime () ;
 scalar_t__ GT_OBELISK ;
 size_t INVENTORY_HEALTH ;
 int InFieldOfVision (int ,int,int*) ;
 float Square (int) ;
 scalar_t__ TEAM_RED ;
 int VectorCopy (int ,int*) ;
 float VectorLengthSquared (int*) ;
 int VectorSubtract (int ,int ,int*) ;
 TYPE_3__ blueobelisk ;
 TYPE_7__* g_entities ;
 scalar_t__ gametype ;
 int lastteleport_origin ;
 int lastteleport_time ;
 TYPE_6__ level ;
 int qfalse ;
 int qtrue ;
 TYPE_3__ redobelisk ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int vectoangles (int*,int*) ;

int BotFindEnemy(bot_state_t *bs, int curenemy) {
 int i, healthdecrease;
 float f, alertness, easyfragger, vis;
 float squaredist, cursquaredist;
 aas_entityinfo_t entinfo, curenemyinfo;
 vec3_t dir, angles;

 alertness = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_ALERTNESS, 0, 1);
 easyfragger = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_EASY_FRAGGER, 0, 1);

 healthdecrease = bs->lasthealth > bs->inventory[INVENTORY_HEALTH];

 bs->lasthealth = bs->inventory[INVENTORY_HEALTH];

 if (curenemy >= 0) {
  BotEntityInfo(curenemy, &curenemyinfo);
  if (EntityCarriesFlag(&curenemyinfo)) return qfalse;
  VectorSubtract(curenemyinfo.origin, bs->origin, dir);
  cursquaredist = VectorLengthSquared(dir);
 }
 else {
  cursquaredist = 0;
 }
 for (i = 0; i < level.maxclients; i++) {

  if (i == bs->client) continue;

  if (i == curenemy) continue;

  if (g_entities[i].flags & FL_NOTARGET) {
   continue;
  }

  BotEntityInfo(i, &entinfo);

  if (!entinfo.valid) continue;

  if (EntityIsDead(&entinfo) || entinfo.number == bs->entitynum) continue;

  if (EntityIsInvisible(&entinfo) && !EntityIsShooting(&entinfo)) {
   continue;
  }

  if (easyfragger < 0.5 && EntityIsChatting(&entinfo)) continue;

  if (lastteleport_time > FloatTime() - 3) {
   VectorSubtract(entinfo.origin, lastteleport_origin, dir);
   if (VectorLengthSquared(dir) < Square(70)) continue;
  }

  VectorSubtract(entinfo.origin, bs->origin, dir);
  squaredist = VectorLengthSquared(dir);

  if (!EntityCarriesFlag(&entinfo))
  {

   if (curenemy >= 0 && squaredist > cursquaredist) continue;
  }

  if (squaredist > Square(900.0 + alertness * 4000.0)) continue;

  if (BotSameTeam(bs, i)) continue;

  if (curenemy < 0 && (healthdecrease || EntityIsShooting(&entinfo)))
   f = 360;
  else
   f = 90 + 90 - (90 - (squaredist > Square(810) ? Square(810) : squaredist) / (810 * 9));

  vis = BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, f, i);
  if (vis <= 0) continue;

  if (curenemy < 0 && squaredist > Square(100) && !healthdecrease && !EntityIsShooting(&entinfo))
  {

   VectorSubtract(bs->origin, entinfo.origin, dir);
   vectoangles(dir, angles);

   if (!InFieldOfVision(entinfo.angles, 90, angles)) {

    BotUpdateBattleInventory(bs, i);

    if (BotWantsToRetreat(bs)) continue;
   }
  }

  bs->enemy = entinfo.number;
  if (curenemy >= 0) bs->enemysight_time = FloatTime() - 2;
  else bs->enemysight_time = FloatTime();
  bs->enemysuicide = qfalse;
  bs->enemydeath_time = 0;
  bs->enemyvisible_time = FloatTime();
  return qtrue;
 }
 return qfalse;
}
