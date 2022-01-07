
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_40__ {scalar_t__ enemy; int tfl; float enemyvisible_time; int* lastenemyorigin; int lastenemyareanum; float check_time; float nbg_time; int* ideal_viewangles; int flags; int weaponnum; int origin; int ms; int character; scalar_t__ ltg_time; int viewangles; int eye; int entitynum; int gs; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_41__ {int flags; int* ideal_viewangles; int* movedir; int weapon; scalar_t__ failure; } ;
typedef TYPE_2__ bot_moveresult_t ;
typedef int bot_goal_t ;
struct TYPE_42__ {int* origin; } ;
typedef TYPE_3__ aas_entityinfo_t ;
struct TYPE_45__ {scalar_t__ entitynum; } ;
struct TYPE_44__ {scalar_t__ integer; } ;
struct TYPE_43__ {scalar_t__ entitynum; } ;


 int AIEnter_Battle_Chase (TYPE_1__*,char*) ;
 int AIEnter_Battle_Fight (TYPE_1__*,char*) ;
 int AIEnter_Battle_NBG (TYPE_1__*,char*) ;
 int AIEnter_Battle_SuicidalFight (TYPE_1__*,char*) ;
 int AIEnter_Intermission (TYPE_1__*,char*) ;
 int AIEnter_Observer (TYPE_1__*,char*) ;
 int AIEnter_Respawn (TYPE_1__*,char*) ;
 int AIEnter_Seek_LTG (TYPE_1__*,char*) ;
 int BFL_IDEALVIEWSET ;
 scalar_t__ Bot1FCTFCarryingFlag (TYPE_1__*) ;
 int BotAIBlocked (TYPE_1__*,TYPE_2__*,int) ;
 int BotAI_Print (int ,char*) ;
 int BotAimAtEnemy (TYPE_1__*) ;
 int BotBattleUseItems (TYPE_1__*) ;
 scalar_t__ BotCTFCarryingFlag (TYPE_1__*) ;
 int BotCheckAttack (TYPE_1__*) ;
 int BotChooseWeapon (TYPE_1__*) ;
 int BotEntityInfo (scalar_t__,TYPE_3__*) ;
 scalar_t__ BotEntityVisible (int ,int ,int ,int,int) ;
 scalar_t__ BotFindEnemy (TYPE_1__*,int) ;
 scalar_t__ BotHarvesterCarryingCubes (TYPE_1__*) ;
 scalar_t__ BotInLavaOrSlime (TYPE_1__*) ;
 scalar_t__ BotIntermission (TYPE_1__*) ;
 scalar_t__ BotIsDead (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotLongTermGoal (TYPE_1__*,int,int,int *) ;
 int BotMapScripts (TYPE_1__*) ;
 scalar_t__ BotNearbyGoal (TYPE_1__*,int,int *,float) ;
 int BotPointAreaNum (int*) ;
 int BotSetupForMovement (TYPE_1__*) ;
 int BotTeamGoals (TYPE_1__*,int) ;
 int BotUpdateBattleInventory (TYPE_1__*,int) ;
 scalar_t__ BotWantsToChase (TYPE_1__*) ;
 int CHARACTERISTIC_ATTACK_SKILL ;
 scalar_t__ EntityIsDead (TYPE_3__*) ;
 float FloatTime () ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ MAX_CLIENTS ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int MOVERESULT_SWIMVIEW ;
 int PRT_MESSAGE ;
 int TFL_DEFAULT ;
 int TFL_GRAPPLEHOOK ;
 int TFL_LAVA ;
 int TFL_SLIME ;
 int VectorCopy (int*,int*) ;
 int VectorSubtract (int*,int ,int*) ;
 TYPE_7__ blueobelisk ;
 TYPE_6__ bot_grapple ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 TYPE_5__ redobelisk ;
 scalar_t__ trap_AAS_AreaReachability (int) ;
 int trap_BotEmptyGoalStack (int ) ;
 int trap_BotMoveToGoal (TYPE_2__*,int ,int *,int) ;
 scalar_t__ trap_BotMovementViewTarget (int ,int *,int,int,int*) ;
 int trap_BotResetAvoidReach (int ) ;
 int trap_BotResetLastAvoidReach (int ) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int vectoangles (int*,int*) ;

int AINode_Battle_Retreat(bot_state_t *bs) {
 bot_goal_t goal;
 aas_entityinfo_t entinfo;
 bot_moveresult_t moveresult;
 vec3_t target, dir;
 float attack_skill, range;
 int areanum;

 if (BotIsObserver(bs)) {
  AIEnter_Observer(bs, "battle retreat: observer");
  return qfalse;
 }

 if (BotIntermission(bs)) {
  AIEnter_Intermission(bs, "battle retreat: intermission");
  return qfalse;
 }

 if (BotIsDead(bs)) {
  AIEnter_Respawn(bs, "battle retreat: bot dead");
  return qfalse;
 }

 if (bs->enemy < 0) {
  AIEnter_Seek_LTG(bs, "battle retreat: no enemy");
  return qfalse;
 }

 BotEntityInfo(bs->enemy, &entinfo);
 if (EntityIsDead(&entinfo)) {
  AIEnter_Seek_LTG(bs, "battle retreat: enemy dead");
  return qfalse;
 }

 if (BotFindEnemy(bs, bs->enemy)) {



 }

 bs->tfl = TFL_DEFAULT;
 if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;

 if (BotInLavaOrSlime(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;

 BotMapScripts(bs);

 BotUpdateBattleInventory(bs, bs->enemy);

 if (BotWantsToChase(bs)) {

  trap_BotEmptyGoalStack(bs->gs);

  AIEnter_Battle_Chase(bs, "battle retreat: wants to chase");
  return qfalse;
 }

 if (BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy)) {
  bs->enemyvisible_time = FloatTime();
  VectorCopy(entinfo.origin, target);

  if (bs->enemy >= MAX_CLIENTS) {







  }

  areanum = BotPointAreaNum(target);
  if (areanum && trap_AAS_AreaReachability(areanum)) {
   VectorCopy(target, bs->lastenemyorigin);
   bs->lastenemyareanum = areanum;
  }
 }

 if (bs->enemyvisible_time < FloatTime() - 4) {
  AIEnter_Seek_LTG(bs, "battle retreat: lost enemy");
  return qfalse;
 }

 else if (bs->enemyvisible_time < FloatTime()) {

  if (BotFindEnemy(bs, -1)) {
   AIEnter_Battle_Fight(bs, "battle retreat: another enemy");
   return qfalse;
  }
 }

 BotTeamGoals(bs, qtrue);

 BotBattleUseItems(bs);

 if (!BotLongTermGoal(bs, bs->tfl, qtrue, &goal)) {
  AIEnter_Battle_SuicidalFight(bs, "battle retreat: no way out");
  return qfalse;
 }

 if (bs->check_time < FloatTime()) {
  bs->check_time = FloatTime() + 1;
  range = 150;
  if (BotNearbyGoal(bs, bs->tfl, &goal, range)) {
   trap_BotResetLastAvoidReach(bs->ms);

   bs->nbg_time = FloatTime() + range / 100 + 1;
   AIEnter_Battle_NBG(bs, "battle retreat: nbg");
   return qfalse;
  }
 }

 BotSetupForMovement(bs);

 trap_BotMoveToGoal(&moveresult, bs->ms, &goal, bs->tfl);

 if (moveresult.failure) {

  trap_BotResetAvoidReach(bs->ms);

  bs->ltg_time = 0;
 }

 BotAIBlocked(bs, &moveresult, qfalse);

 BotChooseWeapon(bs);

 if (moveresult.flags & (MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
  VectorCopy(moveresult.ideal_viewangles, bs->ideal_viewangles);
 }
 else if (!(moveresult.flags & MOVERESULT_MOVEMENTVIEWSET)
    && !(bs->flags & BFL_IDEALVIEWSET) ) {
  attack_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);

  if (attack_skill > 0.3) {
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
   bs->ideal_viewangles[2] *= 0.5;
  }
 }

 if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;

 BotCheckAttack(bs);

 return qtrue;
}
