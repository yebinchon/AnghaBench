
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_32__ {scalar_t__ enemy; scalar_t__ lastenemyareanum; int tfl; int chase_time; int check_time; double nbg_time; double* ideal_viewangles; int flags; scalar_t__ areanum; int weaponnum; int origin; int ms; scalar_t__ ltg_time; int lastenemyorigin; int viewangles; int eye; int entitynum; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_33__ {int flags; int weapon; int movedir; int ideal_viewangles; scalar_t__ failure; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_34__ {scalar_t__ entitynum; scalar_t__ areanum; double* origin; int maxs; int mins; } ;
typedef TYPE_3__ bot_goal_t ;
struct TYPE_35__ {scalar_t__ integer; } ;


 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Battle_NBG (TYPE_1__*,char*) ;
 int AIEnter_Battle_Retreat (TYPE_1__*,char*) ;
 int AIEnter_Intermission (TYPE_1__*,char*) ;
 int AIEnter_Observer (TYPE_1__*,char*) ;
 int AIEnter_Respawn (TYPE_1__*,char*) ;
 int AIEnter_Seek_LTG (TYPE_1__*,char*) ;
 int BFL_IDEALVIEWSET ;
 int BotAIBlocked (TYPE_1__*,TYPE_2__*,int) ;
 int BotAimAtEnemy (TYPE_1__*) ;
 scalar_t__ BotCanAndWantsToRocketJump (TYPE_1__*) ;
 scalar_t__ BotEntityVisible (int ,int ,int ,int,scalar_t__) ;
 scalar_t__ BotFindEnemy (TYPE_1__*,int) ;
 scalar_t__ BotInLavaOrSlime (TYPE_1__*) ;
 scalar_t__ BotIntermission (TYPE_1__*) ;
 scalar_t__ BotIsDead (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotMapScripts (TYPE_1__*) ;
 scalar_t__ BotNearbyGoal (TYPE_1__*,int,TYPE_3__*,float) ;
 int BotSetupForMovement (TYPE_1__*) ;
 int BotUpdateBattleInventory (TYPE_1__*,scalar_t__) ;
 scalar_t__ BotWantsToRetreat (TYPE_1__*) ;
 int FloatTime () ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_ROCKETJUMP ;
 int TFL_SLIME ;
 int VectorCopy (int ,double*) ;
 int VectorSet (int ,int,int,int) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_8__ bot_grapple ;
 int qfalse ;
 int qtrue ;
 int trap_BotMoveToGoal (TYPE_2__*,int ,TYPE_3__*,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,TYPE_3__*,int,int,int ) ;
 int trap_BotResetAvoidReach (int ) ;
 int trap_BotResetLastAvoidReach (int ) ;
 scalar_t__ trap_BotTouchingGoal (int ,TYPE_3__*) ;
 int vectoangles (int ,double*) ;

int AINode_Battle_Chase(bot_state_t *bs)
{
 bot_goal_t goal;
 vec3_t target, dir;
 bot_moveresult_t moveresult;
 float range;

 if (BotIsObserver(bs)) {
  AIEnter_Observer(bs, "battle chase: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  AIEnter_Intermission(bs, "battle chase: intermission");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  AIEnter_Respawn(bs, "battle chase: bot dead");
  return qfalse;
 }

 if (bs->enemy < 0) {
  AIEnter_Seek_LTG(bs, "battle chase: no enemy");
  return qfalse;
 }

 if (BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
  AIEnter_Battle_Fight(bs, "battle chase");
  return qfalse;
 }

 if (BotFindEnemy(bs, -1)) {
  AIEnter_Battle_Fight(bs, "battle chase: better enemy");
  return qfalse;
 }

 if (!bs->lastenemyareanum) {
  AIEnter_Seek_LTG(bs, "battle chase: no enemy area");
  return qfalse;
 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 if (BotCanAndWantsToRocketJump(bs)) {
  bs->tfl |= TFL_ROCKETJUMP;
 }

 BotMapScripts(bs);

 goal.entitynum = bs->enemy;
 goal.areanum = bs->lastenemyareanum;
 VectorCopy(bs->lastenemyorigin, goal.origin);
 VectorSet(goal.mins, -8, -8, -8);
 VectorSet(goal.maxs, 8, 8, 8);

 if (trap_BotTouchingGoal(bs->origin, &goal)) bs->chase_time = 0;

 if (!bs->chase_time || bs->chase_time < FloatTime() - 10) {
  AIEnter_Seek_LTG(bs, "battle chase: time out");
  return qfalse;
 }

 if (bs->check_time < FloatTime()) {
  bs->check_time = FloatTime() + 1;
  range = 150;

  if (BotNearbyGoal(bs, bs->tfl, &goal, range)) {

   bs->nbg_time = FloatTime() + 0.1 * range + 1;
   trap_BotResetLastAvoidReach(bs->ms);
   AIEnter_Battle_NBG(bs, "battle chase: nbg");
   return qfalse;
  }
 }

 BotUpdateBattleInventory(bs, bs->enemy);

 BotSetupForMovement(bs);

 trap_BotMoveToGoal(&moveresult, bs->ms, &goal, bs->tfl);

 if (moveresult.failure) {

  trap_BotResetAvoidReach(bs->ms);

  bs->ltg_time = 0;
 }

 BotAIBlocked(bs, &moveresult, qfalse);

 if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
  VectorCopy(moveresult.ideal_viewangles, bs->ideal_viewangles);
 }
 else if (!(bs->flags & BFL_IDEALVIEWSET)) {
  if (bs->chase_time > FloatTime() - 2) {
   BotAimAtEnemy(bs);
  }
  else {
   if (trap_BotMovementViewTarget(bs->ms, &goal, bs->tfl, 300, target)) {
    VectorSubtract(target, bs->origin, dir);
    vectoangles(dir, bs->ideal_viewangles);
   }
   else {
    vectoangles(moveresult.movedir, bs->ideal_viewangles);
   }
  }
  bs->ideal_viewangles[2] *= 0.5;
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;

 if (bs->areanum == bs->lastenemyareanum) bs->chase_time = 0;

 if (BotWantsToRetreat(bs)) {
  AIEnter_Battle_Retreat(bs, "battle chase: wants to retreat");
  return qtrue;
 }
 return qtrue;
}
