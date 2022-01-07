
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {scalar_t__ weapon; } ;
struct TYPE_12__ {int enemy; int attackchase_time; int attackcrouch_time; int attackjump_time; float attackstrafe_time; int flags; int ms; scalar_t__ thinktime; TYPE_1__ cur_ps; int origin; int character; int lastenemyorigin; int lastenemyareanum; } ;
typedef TYPE_3__ bot_state_t ;
typedef int bot_moveresult_t ;
struct TYPE_13__ {int entitynum; int maxs; int mins; int origin; int areanum; } ;
typedef TYPE_4__ bot_goal_t ;
struct TYPE_14__ {int origin; } ;
typedef TYPE_5__ aas_entityinfo_t ;
struct TYPE_11__ {int member_2; int member_1; int member_0; } ;


 int BFL_STRAFERIGHT ;
 int BotEntityInfo (int,TYPE_5__*) ;
 int BotSetupForMovement (TYPE_3__*) ;
 int CHARACTERISTIC_ATTACK_SKILL ;
 int CHARACTERISTIC_CROUCHER ;
 int CHARACTERISTIC_JUMPER ;
 int CrossProduct (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int FloatTime () ;
 float IDEAL_ATTACKDIST ;
 int MOVE_CROUCH ;
 int MOVE_JUMP ;
 int MOVE_WALK ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (int ,int ) ;
 int VectorNegate (scalar_t__*,scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSet (int ,int,int,int) ;
 int VectorSubtract (int ,int ,scalar_t__*) ;
 scalar_t__ WP_GAUNTLET ;
 double crandom () ;
 int memset (int *,int ,int) ;
 double random () ;
 scalar_t__ trap_BotMoveInDirection (int ,scalar_t__*,int,int) ;
 int trap_BotMoveToGoal (int *,int ,TYPE_4__*,int) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;

bot_moveresult_t BotAttackMove(bot_state_t *bs, int tfl) {
 int movetype, i, attackentity;
 float attack_skill, jumper, croucher, dist, strafechange_time;
 float attack_dist, attack_range;
 vec3_t forward, backward, sideward, hordir, up = {0, 0, 1};
 aas_entityinfo_t entinfo;
 bot_moveresult_t moveresult;
 bot_goal_t goal;

 attackentity = bs->enemy;

 if (bs->attackchase_time > FloatTime()) {

  goal.entitynum = attackentity;
  goal.areanum = bs->lastenemyareanum;
  VectorCopy(bs->lastenemyorigin, goal.origin);
  VectorSet(goal.mins, -8, -8, -8);
  VectorSet(goal.maxs, 8, 8, 8);

  BotSetupForMovement(bs);

  trap_BotMoveToGoal(&moveresult, bs->ms, &goal, tfl);
  return moveresult;
 }

 memset(&moveresult, 0, sizeof(bot_moveresult_t));

 attack_skill = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_ATTACK_SKILL, 0, 1);
 jumper = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_JUMPER, 0, 1);
 croucher = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CROUCHER, 0, 1);

 if (attack_skill < 0.2) return moveresult;

 BotSetupForMovement(bs);

 BotEntityInfo(attackentity, &entinfo);

 VectorSubtract(entinfo.origin, bs->origin, forward);

 dist = VectorNormalize(forward);
 VectorNegate(forward, backward);

 movetype = MOVE_WALK;

 if (bs->attackcrouch_time < FloatTime() - 1) {
  if (random() < jumper) {
   movetype = MOVE_JUMP;
  }

  else if (bs->attackcrouch_time < FloatTime() - 1 && random() < croucher) {
   bs->attackcrouch_time = FloatTime() + croucher * 5;
  }
 }
 if (bs->attackcrouch_time > FloatTime()) movetype = MOVE_CROUCH;

 if (movetype == MOVE_JUMP) {

  if (bs->attackjump_time > FloatTime()) {
   movetype = MOVE_WALK;
  }
  else {
   bs->attackjump_time = FloatTime() + 1;
  }
 }
 if (bs->cur_ps.weapon == WP_GAUNTLET) {
  attack_dist = 0;
  attack_range = 0;
 }
 else {
  attack_dist = IDEAL_ATTACKDIST;
  attack_range = 40;
 }

 if (attack_skill <= 0.4) {

  if (dist > attack_dist + attack_range) {
   if (trap_BotMoveInDirection(bs->ms, forward, 400, movetype)) return moveresult;
  }
  if (dist < attack_dist - attack_range) {
   if (trap_BotMoveInDirection(bs->ms, backward, 400, movetype)) return moveresult;
  }
  return moveresult;
 }

 bs->attackstrafe_time += bs->thinktime;

 strafechange_time = 0.4 + (1 - attack_skill) * 0.2;
 if (attack_skill > 0.7) strafechange_time += crandom() * 0.2;

 if (bs->attackstrafe_time > strafechange_time) {

  if (random() > 0.935) {

   bs->flags ^= BFL_STRAFERIGHT;
   bs->attackstrafe_time = 0;
  }
 }

 for (i = 0; i < 2; i++) {
  hordir[0] = forward[0];
  hordir[1] = forward[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  CrossProduct(hordir, up, sideward);

  if (bs->flags & BFL_STRAFERIGHT) VectorNegate(sideward, sideward);

  if (random() > 0.9) {
   VectorAdd(sideward, backward, sideward);
  }
  else {

   if (dist > attack_dist + attack_range) {
    VectorAdd(sideward, forward, sideward);
   }
   else if (dist < attack_dist - attack_range) {
    VectorAdd(sideward, backward, sideward);
   }
  }

  if (trap_BotMoveInDirection(bs->ms, sideward, 400, movetype))
   return moveresult;

  bs->flags ^= BFL_STRAFERIGHT;
  bs->attackstrafe_time = 0;
 }


 return moveresult;
}
