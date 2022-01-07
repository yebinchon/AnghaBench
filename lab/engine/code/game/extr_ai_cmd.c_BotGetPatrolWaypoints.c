
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* next; struct TYPE_13__* prev; } ;
typedef TYPE_1__ bot_waypoint_t ;
struct TYPE_14__ {int patrolflags; TYPE_1__* patrolpoints; TYPE_1__* curpatrolpoint; int client; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_15__ {int subtype; } ;
typedef TYPE_3__ bot_match_t ;
struct TYPE_16__ {int areanum; int origin; } ;
typedef TYPE_4__ bot_goal_t ;


 TYPE_1__* BotCreateWayPoint (char*,int ,int ) ;
 int BotFreeWaypoints (TYPE_1__*) ;
 int BotGetMessageTeamGoal (TYPE_2__*,char*,TYPE_4__*) ;
 int KEYAREA ;
 int MAX_MESSAGE_SIZE ;
 int MORE ;
 int MTCONTEXT_PATROLKEYAREA ;
 int PATROL_LOOP ;
 int PATROL_REVERSE ;
 int ST_BACK ;
 int ST_MORE ;
 int ST_REVERSE ;
 int qfalse ;
 int qtrue ;
 int trap_BotFindMatch (char*,TYPE_3__*,int ) ;
 int trap_BotMatchVariable (TYPE_3__*,int ,char*,int) ;
 int trap_EA_SayTeam (int ,char*) ;

int BotGetPatrolWaypoints(bot_state_t *bs, bot_match_t *match) {
 char keyarea[MAX_MESSAGE_SIZE];
 int patrolflags;
 bot_waypoint_t *wp, *newwp, *newpatrolpoints;
 bot_match_t keyareamatch;
 bot_goal_t goal;

 newpatrolpoints = ((void*)0);
 patrolflags = 0;

 trap_BotMatchVariable(match, KEYAREA, keyarea, MAX_MESSAGE_SIZE);

 while(1) {
  if (!trap_BotFindMatch(keyarea, &keyareamatch, MTCONTEXT_PATROLKEYAREA)) {
   trap_EA_SayTeam(bs->client, "what do you say?");
   BotFreeWaypoints(newpatrolpoints);
   bs->patrolpoints = ((void*)0);
   return qfalse;
  }
  trap_BotMatchVariable(&keyareamatch, KEYAREA, keyarea, MAX_MESSAGE_SIZE);
  if (!BotGetMessageTeamGoal(bs, keyarea, &goal)) {


   BotFreeWaypoints(newpatrolpoints);
   bs->patrolpoints = ((void*)0);
   return qfalse;
  }

  newwp = BotCreateWayPoint(keyarea, goal.origin, goal.areanum);
  if (!newwp)
   break;

  newwp->next = ((void*)0);
  for (wp = newpatrolpoints; wp && wp->next; wp = wp->next);
  if (!wp) {
   newpatrolpoints = newwp;
   newwp->prev = ((void*)0);
  }
  else {
   wp->next = newwp;
   newwp->prev = wp;
  }

  if (keyareamatch.subtype & ST_BACK) {
   patrolflags = PATROL_LOOP;
   break;
  }
  else if (keyareamatch.subtype & ST_REVERSE) {
   patrolflags = PATROL_REVERSE;
   break;
  }
  else if (keyareamatch.subtype & ST_MORE) {
   trap_BotMatchVariable(&keyareamatch, MORE, keyarea, MAX_MESSAGE_SIZE);
  }
  else {
   break;
  }
 }

 if (!newpatrolpoints || !newpatrolpoints->next) {
  trap_EA_SayTeam(bs->client, "I need more key points to patrol\n");
  BotFreeWaypoints(newpatrolpoints);
  newpatrolpoints = ((void*)0);
  return qfalse;
 }

 BotFreeWaypoints(bs->patrolpoints);
 bs->patrolpoints = newpatrolpoints;

 bs->curpatrolpoint = bs->patrolpoints;
 bs->patrolflags = patrolflags;

 return qtrue;
}
