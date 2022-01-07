
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int netname ;
typedef int goalname ;
typedef int carrying ;
struct TYPE_10__ {scalar_t__ entitynum; int number; } ;
struct TYPE_11__ {char** inventory; int ltgtype; scalar_t__ client; int gs; TYPE_1__ teamgoal; int teammate; int teamleader; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_12__ {int number; } ;
typedef TYPE_3__ bot_goal_t ;
typedef int action ;


 scalar_t__ Bot1FCTFCarryingFlag (TYPE_2__*) ;
 scalar_t__ BotCTFCarryingFlag (TYPE_2__*) ;
 scalar_t__ BotHarvesterCarryingCubes (TYPE_2__*) ;
 scalar_t__ BotTeam (TYPE_2__*) ;
 scalar_t__ CS_BOTINFO ;
 int ClientName (scalar_t__,char*,int) ;
 int Com_sprintf (char*,int,char*,...) ;
 int EasyClientName (int ,char*,int) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 size_t INVENTORY_BLUECUBE ;
 size_t INVENTORY_REDCUBE ;
 int MAX_MESSAGE_SIZE ;
 scalar_t__ Q_stricmp (char*,int ) ;
 scalar_t__ TEAM_RED ;
 scalar_t__ gametype ;
 int strcpy (char*,char*) ;
 int trap_BotGetTopGoal (int ,TYPE_3__*) ;
 int trap_BotGoalName (int ,char*,int) ;
 int trap_SetConfigstring (scalar_t__,char*) ;
 char* va (char*,char*,char*,char*) ;

void BotSetInfoConfigString(bot_state_t *bs) {
 char goalname[MAX_MESSAGE_SIZE];
 char netname[MAX_MESSAGE_SIZE];
 char action[MAX_MESSAGE_SIZE];
 char *leader, carrying[32], *cs;
 bot_goal_t goal;

 ClientName(bs->client, netname, sizeof(netname));
 if (Q_stricmp(netname, bs->teamleader) == 0) leader = "L";
 else leader = " ";

 strcpy(carrying, "  ");
 if (gametype == GT_CTF) {
  if (BotCTFCarryingFlag(bs)) {
   strcpy(carrying, "F ");
  }
 }
 switch(bs->ltgtype) {
  case 128:
  {
   EasyClientName(bs->teammate, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "helping %s", goalname);
   break;
  }
  case 129:
  {
   EasyClientName(bs->teammate, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "accompanying %s", goalname);
   break;
  }
  case 137:
  {
   trap_BotGoalName(bs->teamgoal.number, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "defending %s", goalname);
   break;
  }
  case 135:
  {
   trap_BotGoalName(bs->teamgoal.number, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "getting item %s", goalname);
   break;
  }
  case 133:
  {
   ClientName(bs->teamgoal.entitynum, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "killing %s", goalname);
   break;
  }
  case 139:
  case 138:
  {
   Com_sprintf(action, sizeof(action), "camping");
   break;
  }
  case 132:
  {
   Com_sprintf(action, sizeof(action), "patrolling");
   break;
  }
  case 136:
  {
   Com_sprintf(action, sizeof(action), "capturing flag");
   break;
  }
  case 130:
  {
   Com_sprintf(action, sizeof(action), "rushing base");
   break;
  }
  case 131:
  {
   Com_sprintf(action, sizeof(action), "returning flag");
   break;
  }
  case 140:
  {
   Com_sprintf(action, sizeof(action), "attacking the enemy base");
   break;
  }
  case 134:
  {
   Com_sprintf(action, sizeof(action), "harvesting");
   break;
  }
  default:
  {
   trap_BotGetTopGoal(bs->gs, &goal);
   trap_BotGoalName(goal.number, goalname, sizeof(goalname));
   Com_sprintf(action, sizeof(action), "roaming %s", goalname);
   break;
  }
 }
   cs = va("l\\%s\\c\\%s\\a\\%s",
    leader,
    carrying,
    action);
   trap_SetConfigstring (CS_BOTINFO + bs->client, cs);
}
