
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_29__ {int tfl; int enemy; scalar_t__ nbg_time; double* ideal_viewangles; double thinktime; int flags; int gs; int ms; int weaponnum; int origin; scalar_t__ check_time; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_30__ {int flags; int weapon; int movedir; int ideal_viewangles; scalar_t__ failure; } ;
typedef TYPE_2__ bot_moveresult_t ;
typedef int bot_goal_t ;
struct TYPE_31__ {scalar_t__ integer; } ;


 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Battle_NBG (TYPE_1__*,char*) ;
 int AIEnter_Intermission (TYPE_1__*,char*) ;
 int AIEnter_Observer (TYPE_1__*,char*) ;
 int AIEnter_Respawn (TYPE_1__*,char*) ;
 int AIEnter_Seek_LTG (TYPE_1__*,char*) ;
 int BFL_IDEALVIEWSET ;
 int BotAIBlocked (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ BotAIPredictObstacles (TYPE_1__*,int *) ;
 scalar_t__ BotCanAndWantsToRocketJump (TYPE_1__*) ;
 int BotChooseWeapon (TYPE_1__*) ;
 int BotClearPath (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ BotFindEnemy (TYPE_1__*,int) ;
 scalar_t__ BotInLavaOrSlime (TYPE_1__*) ;
 scalar_t__ BotIntermission (TYPE_1__*) ;
 scalar_t__ BotIsDead (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotMapScripts (TYPE_1__*) ;
 scalar_t__ BotReachedGoal (TYPE_1__*,int *) ;
 int BotRoamGoal (TYPE_1__*,int ) ;
 int BotSetupForMovement (TYPE_1__*) ;
 scalar_t__ BotWantsToRetreat (TYPE_1__*) ;
 scalar_t__ FloatTime () ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int MOVERESULT_WAITING ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_ROCKETJUMP ;
 int TFL_SLIME ;
 int VectorCopy (int ,double*) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ bot_grapple ;
 int qfalse ;
 int qtrue ;
 double random () ;
 int trap_BotEmptyGoalStack (int ) ;
 int trap_BotGetSecondGoal (int ,int *) ;
 int trap_BotGetTopGoal (int ,int *) ;
 int trap_BotMoveToGoal (TYPE_2__*,int ,int *,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,int *,int,int,int ) ;
 int trap_BotPopGoal (int ) ;
 int trap_BotResetAvoidReach (int ) ;
 int trap_BotResetLastAvoidReach (int ) ;
 int vectoangles (int ,double*) ;

int AINode_Seek_NBG(bot_state_t *bs) {
 bot_goal_t goal;
 vec3_t target, dir;
 bot_moveresult_t moveresult;

 if (BotIsObserver(bs)) {
  AIEnter_Observer(bs, "seek nbg: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  AIEnter_Intermission(bs, "seek nbg: intermision");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  AIEnter_Respawn(bs, "seek nbg: bot dead");
  return qfalse;
 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 if (BotCanAndWantsToRocketJump(bs)) {
  bs->tfl |= TFL_ROCKETJUMP;
 }

 BotMapScripts(bs);

 bs->enemy = -1;

 if (!trap_BotGetTopGoal(bs->gs, &goal)) bs->nbg_time = 0;

 else if (BotReachedGoal(bs, &goal)) {
  BotChooseWeapon(bs);
  bs->nbg_time = 0;
 }

 if (bs->nbg_time < FloatTime()) {

  trap_BotPopGoal(bs->gs);


  bs->check_time = FloatTime() + 0.05;

  AIEnter_Seek_LTG(bs, "seek nbg: time out");
  return qfalse;
 }

 if (BotAIPredictObstacles(bs, &goal))
  return qfalse;

 BotSetupForMovement(bs);

 trap_BotMoveToGoal(&moveresult, bs->ms, &goal, bs->tfl);

 if (moveresult.failure) {

  trap_BotResetAvoidReach(bs->ms);
  bs->nbg_time = 0;
 }

 BotAIBlocked(bs, &moveresult, qtrue);

 BotClearPath(bs, &moveresult);

 if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
  VectorCopy(moveresult.ideal_viewangles, bs->ideal_viewangles);
 }

 else if (moveresult.flags & MOVERESULT_WAITING) {
  if (random() < bs->thinktime * 0.8) {
   BotRoamGoal(bs, target);
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
   bs->ideal_viewangles[2] *= 0.5;
  }
 }
 else if (!(bs->flags & BFL_IDEALVIEWSET)) {
  if (!trap_BotGetSecondGoal(bs->gs, &goal)) trap_BotGetTopGoal(bs->gs, &goal);
  if (trap_BotMovementViewTarget(bs->ms, &goal, bs->tfl, 300, target)) {
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
  }

  else vectoangles(moveresult.movedir, bs->ideal_viewangles);
  bs->ideal_viewangles[2] *= 0.5;
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;

 if (BotFindEnemy(bs, -1)) {
  if (BotWantsToRetreat(bs)) {

   AIEnter_Battle_NBG(bs, "seek nbg: found enemy");
  }
  else {
   trap_BotResetLastAvoidReach(bs->ms);

   trap_BotEmptyGoalStack(bs->gs);

   AIEnter_Battle_Fight(bs, "seek nbg: found enemy");
  }
 }
 return qtrue;
}
