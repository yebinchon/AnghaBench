
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;


struct TYPE_23__ {int damagetype; } ;
struct TYPE_24__ {scalar_t__ number; int speed; int vspread; int hspread; TYPE_2__ proj; scalar_t__* offset; } ;
typedef TYPE_3__ weaponinfo_t ;
typedef int* vec3_t ;
struct TYPE_25__ {int fraction; scalar_t__ ent; int* endpos; scalar_t__ startsolid; } ;
typedef TYPE_4__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ weaponstate; scalar_t__ viewheight; } ;
struct TYPE_26__ {scalar_t__ enemy; int* eye; int* ideal_viewangles; int* aimtarget; float enemysight_time; float teleport_time; int enemyposition_time; int* enemyvelocity; int* enemyorigin; scalar_t__ entitynum; int* viewangles; int* origin; int* lastenemyorigin; int client; int lastenemyareanum; int areanum; TYPE_1__ cur_ps; int character; int weaponnum; int ws; } ;
typedef TYPE_5__ bot_state_t ;
struct TYPE_27__ {int* origin; int maxs; int mins; int areanum; int entitynum; } ;
typedef TYPE_6__ bot_goal_t ;
struct TYPE_28__ {int* origin; int* lastvisorigin; int update_time; scalar_t__ number; } ;
typedef TYPE_7__ aas_entityinfo_t ;
struct TYPE_29__ {int* endpos; } ;
typedef TYPE_8__ aas_clientmove_t ;
struct TYPE_21__ {scalar_t__ entitynum; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ entitynum; } ;


 void* AngleMod (int) ;
 int BotAI_Trace (TYPE_4__*,int*,int*,int*,int*,scalar_t__,int ) ;
 int BotEntityInfo (scalar_t__,TYPE_7__*) ;
 int BotEntityVisible (scalar_t__,int*,int*,int,scalar_t__) ;
 int CHARACTERISTIC_AIM_ACCURACY ;
 int CHARACTERISTIC_AIM_ACCURACY_BFG10K ;
 int CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER ;
 int CHARACTERISTIC_AIM_ACCURACY_LIGHTNING ;
 int CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN ;
 int CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN ;
 int CHARACTERISTIC_AIM_ACCURACY_RAILGUN ;
 int CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER ;
 int CHARACTERISTIC_AIM_ACCURACY_SHOTGUN ;
 int CHARACTERISTIC_AIM_SKILL ;
 int CHARACTERISTIC_AIM_SKILL_BFG10K ;
 int CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER ;
 int CHARACTERISTIC_AIM_SKILL_PLASMAGUN ;
 int CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER ;
 int CHARACTERISTIC_REACTIONTIME ;
 int DAMAGETYPE_RADIAL ;
 scalar_t__ DotProduct (int*,int*) ;
 scalar_t__ EntityIsInvisible (TYPE_7__*) ;
 int FloatTime () ;
 int MASK_SHOT ;
 scalar_t__ MAX_CLIENTS ;
 size_t PITCH ;
 int PRESENCE_CROUCH ;
 scalar_t__ Square (int) ;
 int TFL_DEFAULT ;
 int VectorClear (int*) ;
 int VectorCopy (int*,int*) ;
 float VectorLength (int*) ;
 scalar_t__ VectorLengthSquared (int*) ;
 int VectorMA (int*,float,int*,int*) ;
 float VectorNormalize (int*) ;
 int VectorScale (int*,int,int*) ;
 int VectorSet (int ,int,int,int) ;
 int VectorSubtract (int*,int*,int*) ;
 scalar_t__ WEAPON_READY ;
 scalar_t__ WP_BFG ;
 scalar_t__ WP_GRENADE_LAUNCHER ;
 scalar_t__ WP_LIGHTNING ;
 scalar_t__ WP_MACHINEGUN ;
 scalar_t__ WP_PLASMAGUN ;
 scalar_t__ WP_RAILGUN ;
 scalar_t__ WP_ROCKET_LAUNCHER ;
 scalar_t__ WP_SHOTGUN ;
 size_t YAW ;
 TYPE_14__ blueobelisk ;
 TYPE_13__ bot_challenge ;
 int crandom () ;
 int fabs (int) ;
 int qfalse ;
 double random () ;
 TYPE_12__ redobelisk ;
 int trap_AAS_PredictClientMovement (TYPE_8__*,scalar_t__,int*,int ,int ,int*,int*,int ,float,float,int ,int ,int ) ;
 int trap_BotGetWeaponInfo (int ,int ,TYPE_3__*) ;
 scalar_t__ trap_BotPredictVisiblePosition (int*,int ,TYPE_6__*,int ,int*) ;
 double trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_View (int ,int*) ;
 int vectoangles (int*,int*) ;

void BotAimAtEnemy(bot_state_t *bs) {
 int i, enemyvisible;
 float dist, f, aim_skill, aim_accuracy, speed, reactiontime;
 vec3_t dir, bestorigin, end, start, groundtarget, cmdmove, enemyvelocity;
 vec3_t mins = {-4,-4,-4}, maxs = {4, 4, 4};
 weaponinfo_t wi;
 aas_entityinfo_t entinfo;
 bot_goal_t goal;
 bsp_trace_t trace;
 vec3_t target;


 if (bs->enemy < 0) {
  return;
 }

 BotEntityInfo(bs->enemy, &entinfo);

 if (bs->enemy >= MAX_CLIENTS) {

  VectorCopy(entinfo.origin, target);
  VectorSubtract(target, bs->eye, dir);
  vectoangles(dir, bs->ideal_viewangles);

  VectorCopy(target, bs->aimtarget);
  return;
 }



 aim_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_SKILL, 0, 1);
 aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY, 0, 1);

 if (aim_skill > 0.95) {

  reactiontime = 0.5 * trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_REACTIONTIME, 0, 1);
  if (bs->enemysight_time > FloatTime() - reactiontime) return;
  if (bs->teleport_time > FloatTime() - reactiontime) return;
 }


 trap_BotGetWeaponInfo(bs->ws, bs->weaponnum, &wi);

 if (wi.number == WP_MACHINEGUN) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN, 0, 1);
 }
 else if (wi.number == WP_SHOTGUN) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_SHOTGUN, 0, 1);
 }
 else if (wi.number == WP_GRENADE_LAUNCHER) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER, 0, 1);
  aim_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER, 0, 1);
 }
 else if (wi.number == WP_ROCKET_LAUNCHER) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER, 0, 1);
  aim_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER, 0, 1);
 }
 else if (wi.number == WP_LIGHTNING) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_LIGHTNING, 0, 1);
 }
 else if (wi.number == WP_RAILGUN) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_RAILGUN, 0, 1);
 }
 else if (wi.number == WP_PLASMAGUN) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN, 0, 1);
  aim_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_SKILL_PLASMAGUN, 0, 1);
 }
 else if (wi.number == WP_BFG) {
  aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY_BFG10K, 0, 1);
  aim_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_SKILL_BFG10K, 0, 1);
 }

 if (aim_accuracy <= 0) aim_accuracy = 0.0001f;

 BotEntityInfo(bs->enemy, &entinfo);

 if (EntityIsInvisible(&entinfo)) {
  if (random() > 0.1) aim_accuracy *= 0.4f;
 }

 VectorSubtract(entinfo.origin, entinfo.lastvisorigin, enemyvelocity);
 VectorScale(enemyvelocity, 1 / entinfo.update_time, enemyvelocity);

 if (bs->enemyposition_time < FloatTime()) {

  bs->enemyposition_time = FloatTime() + 0.5;
  VectorCopy(enemyvelocity, bs->enemyvelocity);
  VectorCopy(entinfo.origin, bs->enemyorigin);
 }

 if (aim_skill < 0.9) {
  VectorSubtract(entinfo.origin, bs->enemyorigin, dir);

  if (VectorLengthSquared(dir) > Square(48)) {

   if (DotProduct(bs->enemyvelocity, enemyvelocity) < 0) {

    aim_accuracy *= 0.7f;
   }
  }
 }

 enemyvisible = BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy);

 if (enemyvisible) {

  VectorCopy(entinfo.origin, bestorigin);
  bestorigin[2] += 8;


  VectorCopy(bs->origin, start);
  start[2] += bs->cur_ps.viewheight;
  start[2] += wi.offset[2];

  BotAI_Trace(&trace, start, mins, maxs, bestorigin, bs->entitynum, MASK_SHOT);

  if (trace.fraction <= 1 && trace.ent != entinfo.number) {
   bestorigin[2] += 16;
  }

  if (wi.speed) {

   VectorSubtract(bestorigin, bs->origin, dir);
   dist = VectorLength(dir);
   VectorSubtract(entinfo.origin, bs->enemyorigin, dir);

   if (!(dist > 100 && VectorLengthSquared(dir) < Square(32))) {

    if (aim_skill > 0.8 &&

      bs->cur_ps.weaponstate == WEAPON_READY) {
     aas_clientmove_t move;
     vec3_t origin;

     VectorSubtract(entinfo.origin, bs->origin, dir);

     dist = VectorLength(dir);

     VectorSubtract(entinfo.origin, entinfo.lastvisorigin, dir);

     VectorScale(dir, 1 / entinfo.update_time, dir);

     VectorCopy(entinfo.origin, origin);
     origin[2] += 1;

     VectorClear(cmdmove);

     trap_AAS_PredictClientMovement(&move, bs->enemy, origin,
              PRESENCE_CROUCH, qfalse,
              dir, cmdmove, 0,
              dist * 10 / wi.speed, 0.1f, 0, 0, qfalse);
     VectorCopy(move.endpos, bestorigin);

    }

    else if (aim_skill > 0.4) {
     VectorSubtract(entinfo.origin, bs->origin, dir);

     dist = VectorLength(dir);

     VectorSubtract(entinfo.origin, entinfo.lastvisorigin, dir);
     dir[2] = 0;

     speed = VectorNormalize(dir) / entinfo.update_time;


     VectorMA(entinfo.origin, (dist / wi.speed) * speed, dir, bestorigin);
    }
   }
  }

  if (aim_skill > 0.6 && wi.proj.damagetype & DAMAGETYPE_RADIAL) {

   if (entinfo.origin[2] < bs->origin[2] + 16) {

    VectorCopy(entinfo.origin, end);
    end[2] -= 64;
    BotAI_Trace(&trace, entinfo.origin, ((void*)0), ((void*)0), end, entinfo.number, MASK_SHOT);

    VectorCopy(bestorigin, groundtarget);
    if (trace.startsolid) groundtarget[2] = entinfo.origin[2] - 16;
    else groundtarget[2] = trace.endpos[2] - 8;

    BotAI_Trace(&trace, start, ((void*)0), ((void*)0), groundtarget, bs->entitynum, MASK_SHOT);

    if (fabs(trace.endpos[2] - groundtarget[2]) < 50) {
     VectorSubtract(trace.endpos, groundtarget, dir);

     if (VectorLengthSquared(dir) < Square(60)) {
      VectorSubtract(trace.endpos, start, dir);

      if (VectorLengthSquared(dir) > Square(100)) {

       trace.endpos[2] += 1;
       BotAI_Trace(&trace, trace.endpos, ((void*)0), ((void*)0), entinfo.origin, entinfo.number, MASK_SHOT);
       if (trace.fraction >= 1) {

        VectorCopy(groundtarget, bestorigin);
       }
      }
     }
    }
   }
  }
  bestorigin[0] += 20 * crandom() * (1 - aim_accuracy);
  bestorigin[1] += 20 * crandom() * (1 - aim_accuracy);
  bestorigin[2] += 10 * crandom() * (1 - aim_accuracy);
 }
 else {

  VectorCopy(bs->lastenemyorigin, bestorigin);
  bestorigin[2] += 8;

  if (aim_skill > 0.5) {

   if (wi.number == WP_BFG ||
    wi.number == WP_ROCKET_LAUNCHER ||
    wi.number == WP_GRENADE_LAUNCHER) {

    goal.entitynum = bs->client;
    goal.areanum = bs->areanum;
    VectorCopy(bs->eye, goal.origin);
    VectorSet(goal.mins, -8, -8, -8);
    VectorSet(goal.maxs, 8, 8, 8);

    if (trap_BotPredictVisiblePosition(bs->lastenemyorigin, bs->lastenemyareanum, &goal, TFL_DEFAULT, target)) {
     VectorSubtract(target, bs->eye, dir);
     if (VectorLengthSquared(dir) > Square(80)) {
      VectorCopy(target, bestorigin);
      bestorigin[2] -= 20;
     }
    }
    aim_accuracy = 1;
   }
  }
 }

 if (enemyvisible) {
  BotAI_Trace(&trace, bs->eye, ((void*)0), ((void*)0), bestorigin, bs->entitynum, MASK_SHOT);
  VectorCopy(trace.endpos, bs->aimtarget);
 }
 else {
  VectorCopy(bestorigin, bs->aimtarget);
 }

 VectorSubtract(bestorigin, bs->eye, dir);

 if (wi.number == WP_MACHINEGUN ||
  wi.number == WP_SHOTGUN ||
  wi.number == WP_LIGHTNING ||
  wi.number == WP_RAILGUN) {

  dist = VectorLength(dir);
  if (dist > 150) dist = 150;
  f = 0.6 + dist / 150 * 0.4;
  aim_accuracy *= f;
 }

 if (aim_accuracy < 0.8) {
  VectorNormalize(dir);
  for (i = 0; i < 3; i++) dir[i] += 0.3 * crandom() * (1 - aim_accuracy);
 }

 vectoangles(dir, bs->ideal_viewangles);

 bs->ideal_viewangles[PITCH] += 6 * wi.vspread * crandom() * (1 - aim_accuracy);
 bs->ideal_viewangles[PITCH] = AngleMod(bs->ideal_viewangles[PITCH]);
 bs->ideal_viewangles[YAW] += 6 * wi.hspread * crandom() * (1 - aim_accuracy);
 bs->ideal_viewangles[YAW] = AngleMod(bs->ideal_viewangles[YAW]);

 if (bot_challenge.integer) {

  if (aim_accuracy > 0.9 && bs->enemysight_time < FloatTime() - 1) {

   if (bs->ideal_viewangles[PITCH] > 180) bs->ideal_viewangles[PITCH] -= 360;
   VectorCopy(bs->ideal_viewangles, bs->viewangles);
   trap_EA_View(bs->client, bs->viewangles);
  }
 }
}
