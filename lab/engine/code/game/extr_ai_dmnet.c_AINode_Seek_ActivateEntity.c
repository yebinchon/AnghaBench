
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_13__ ;


typedef double* vec3_t ;
struct TYPE_44__ {double fraction; scalar_t__ ent; } ;
typedef TYPE_3__ bsp_trace_t ;
struct TYPE_42__ {int weapon; } ;
struct TYPE_45__ {int tfl; int enemy; double* ideal_viewangles; double thinktime; int flags; int weaponnum; int gs; int ms; int origin; TYPE_2__* activatestack; int eye; int client; int viewangles; TYPE_1__ cur_ps; int entitynum; } ;
typedef TYPE_4__ bot_state_t ;
struct TYPE_46__ {int flags; double* ideal_viewangles; int weapon; double* movedir; scalar_t__ failure; } ;
typedef TYPE_5__ bot_moveresult_t ;
struct TYPE_47__ {scalar_t__ entitynum; } ;
typedef TYPE_6__ bot_goal_t ;
struct TYPE_48__ {int origin; } ;
typedef TYPE_7__ aas_entityinfo_t ;
struct TYPE_43__ {double* target; int weapon; scalar_t__ time; scalar_t__ shoot; int origin; TYPE_6__ goal; } ;
struct TYPE_41__ {scalar_t__ integer; } ;


 int AIEnter_Battle_Fight (TYPE_4__*,char*) ;
 int AIEnter_Battle_NBG (TYPE_4__*,char*) ;
 int AIEnter_Intermission (TYPE_4__*,char*) ;
 int AIEnter_Observer (TYPE_4__*,char*) ;
 int AIEnter_Respawn (TYPE_4__*,char*) ;
 int AIEnter_Seek_NBG (TYPE_4__*,char*) ;
 int BFL_IDEALVIEWSET ;
 int BotAIBlocked (TYPE_4__*,TYPE_5__*,int) ;
 scalar_t__ BotAIPredictObstacles (TYPE_4__*,TYPE_6__*) ;
 int BotAI_Print (int ,char*) ;
 int BotAI_Trace (TYPE_3__*,int ,int *,int *,double*,int ,int ) ;
 int BotClearActivateGoalStack (TYPE_4__*) ;
 int BotClearPath (TYPE_4__*,TYPE_5__*) ;
 int BotEntityInfo (scalar_t__,TYPE_7__*) ;
 scalar_t__ BotFindEnemy (TYPE_4__*,int) ;
 scalar_t__ BotInLavaOrSlime (TYPE_4__*) ;
 scalar_t__ BotIntermission (TYPE_4__*) ;
 scalar_t__ BotIsDead (TYPE_4__*) ;
 scalar_t__ BotIsObserver (TYPE_4__*) ;
 int BotMapScripts (TYPE_4__*) ;
 int BotPopFromActivateGoalStack (TYPE_4__*) ;
 int BotRoamGoal (TYPE_4__*,double*) ;
 int BotSelectActivateWeapon (TYPE_4__*) ;
 int BotSetupForMovement (TYPE_4__*) ;
 scalar_t__ BotWantsToRetreat (TYPE_4__*) ;
 scalar_t__ FloatTime () ;
 scalar_t__ InFieldOfVision (int ,int,double*) ;
 int MASK_SHOT ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int MOVERESULT_WAITING ;
 int PRT_MESSAGE ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_SLIME ;
 int VectorCompare (int ,int ) ;
 int VectorCopy (double*,double*) ;
 int VectorSubtract (double*,int ,double*) ;
 TYPE_13__ bot_grapple ;
 int memset (TYPE_5__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 double random () ;
 int trap_BotEmptyGoalStack (int ) ;
 int trap_BotMoveToGoal (TYPE_5__*,int ,TYPE_6__*,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,TYPE_6__*,int,int,double*) ;
 int trap_BotResetAvoidReach (int ) ;
 int trap_BotResetLastAvoidReach (int ) ;
 scalar_t__ trap_BotTouchingGoal (int ,TYPE_6__*) ;
 int trap_EA_Attack (int ) ;
 int vectoangles (double*,double*) ;

int AINode_Seek_ActivateEntity(bot_state_t *bs) {
 bot_goal_t *goal;
 vec3_t target, dir, ideal_viewangles;
 bot_moveresult_t moveresult;
 int targetvisible;
 bsp_trace_t bsptrace;
 aas_entityinfo_t entinfo;

 if (BotIsObserver(bs)) {
  BotClearActivateGoalStack(bs);
  AIEnter_Observer(bs, "active entity: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  BotClearActivateGoalStack(bs);
  AIEnter_Intermission(bs, "activate entity: intermission");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  BotClearActivateGoalStack(bs);
  AIEnter_Respawn(bs, "activate entity: bot dead");
  return qfalse;
 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 BotMapScripts(bs);

 bs->enemy = -1;

 if (!bs->activatestack) {
  BotClearActivateGoalStack(bs);
  AIEnter_Seek_NBG(bs, "activate entity: no goal");
  return qfalse;
 }

 goal = &bs->activatestack->goal;

 targetvisible = qfalse;

 if (bs->activatestack->shoot) {

  BotAI_Trace(&bsptrace, bs->eye, ((void*)0), ((void*)0), bs->activatestack->target, bs->entitynum, MASK_SHOT);

  if (bsptrace.fraction >= 1.0 || bsptrace.ent == goal->entitynum) {
   targetvisible = qtrue;

   if (bs->cur_ps.weapon == bs->activatestack->weapon) {
    VectorSubtract(bs->activatestack->target, bs->eye, dir);
    vectoangles(dir, ideal_viewangles);

    if (InFieldOfVision(bs->viewangles, 20, ideal_viewangles)) {
     trap_EA_Attack(bs->client);
    }
   }
  }
 }

 if (targetvisible) {

  BotEntityInfo(goal->entitynum, &entinfo);

  if (!VectorCompare(bs->activatestack->origin, entinfo.origin)) {



   bs->activatestack->time = 0;
  }

  if (bs->activatestack->time < FloatTime()) {
   BotPopFromActivateGoalStack(bs);

   if (bs->activatestack) {
    bs->activatestack->time = FloatTime() + 10;
    return qfalse;
   }
   AIEnter_Seek_NBG(bs, "activate entity: time out");
   return qfalse;
  }
  memset(&moveresult, 0, sizeof(bot_moveresult_t));
 }
 else {

  if (!goal) {
   bs->activatestack->time = 0;
  }

  else if (!bs->activatestack->shoot) {

   if (trap_BotTouchingGoal(bs->origin, goal)) {



    bs->activatestack->time = 0;
   }
  }

  if (bs->activatestack->time < FloatTime()) {
   BotPopFromActivateGoalStack(bs);

   if (bs->activatestack) {
    bs->activatestack->time = FloatTime() + 10;
    return qfalse;
   }
   AIEnter_Seek_NBG(bs, "activate entity: activated");
   return qfalse;
  }

  if (BotAIPredictObstacles(bs, goal))
   return qfalse;

  BotSetupForMovement(bs);

  trap_BotMoveToGoal(&moveresult, bs->ms, goal, bs->tfl);

  if (moveresult.failure) {

   trap_BotResetAvoidReach(bs->ms);

   bs->activatestack->time = 0;
  }

  BotAIBlocked(bs, &moveresult, qtrue);
 }

 BotClearPath(bs, &moveresult);

 if (bs->activatestack->shoot) {

  if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEW)) {
   VectorSubtract(bs->activatestack->target, bs->eye, dir);
   vectoangles(dir, moveresult.ideal_viewangles);
   moveresult.flags |= MOVERESULT_MOVEMENTVIEW;
  }

  if (!(moveresult.flags & MOVERESULT_MOVEMENTWEAPON)) {
   moveresult.flags |= MOVERESULT_MOVEMENTWEAPON;

   bs->activatestack->weapon = BotSelectActivateWeapon(bs);
   if (bs->activatestack->weapon == -1) {

    bs->activatestack->weapon = 0;
   }
   moveresult.weapon = bs->activatestack->weapon;
  }
 }

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
  if (trap_BotMovementViewTarget(bs->ms, goal, bs->tfl, 300, target)) {
   VectorSubtract(target, bs->origin, dir);
   vectoangles(dir, bs->ideal_viewangles);
  }
  else {
   vectoangles(moveresult.movedir, bs->ideal_viewangles);
  }
  bs->ideal_viewangles[2] *= 0.5;
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON)
  bs->weaponnum = moveresult.weapon;

 if (BotFindEnemy(bs, -1)) {
  if (BotWantsToRetreat(bs)) {

   AIEnter_Battle_NBG(bs, "activate entity: found enemy");
  }
  else {
   trap_BotResetLastAvoidReach(bs->ms);

   trap_BotEmptyGoalStack(bs->gs);

   AIEnter_Battle_Fight(bs, "activate entity: found enemy");
  }
  BotClearActivateGoalStack(bs);
 }
 return qtrue;
}
