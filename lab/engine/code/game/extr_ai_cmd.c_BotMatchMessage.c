
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_64__ TYPE_2__ ;
typedef struct TYPE_63__ TYPE_1__ ;


struct TYPE_63__ {int client; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_64__ {int type; } ;
typedef TYPE_2__ bot_match_t ;


 int BotAI_Print (int ,char*) ;
 int BotMatch_AttackEnemyBase (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_CTF (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Camp (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_CheckPoint (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_DefendKeyArea (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Dismiss (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_EnterGame (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_FormationSpace (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_GetFlag (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_GetItem (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Harvest (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_HelpAccompany (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_JoinSubteam (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Kill (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_LeadTheWay (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_LeaveSubteam (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_NewLeader (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Patrol (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_ReturnFlag (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_RushBase (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_StartTeamLeaderShip (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_StopTeamLeaderShip (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_Suicide (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_TaskPreference (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_WhatAreYouDoing (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_WhatIsMyCommand (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_WhereAreYou (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_WhichTeam (TYPE_1__*,TYPE_2__*) ;
 int BotMatch_WhoIsTeamLeader (TYPE_1__*,TYPE_2__*) ;
 int MTCONTEXT_CTF ;
 int MTCONTEXT_INITIALTEAMCHAT ;
 int MTCONTEXT_MISC ;
 int PRT_MESSAGE ;
 int qfalse ;
 int qtrue ;
 int trap_BotFindMatch (char*,TYPE_2__*,int) ;
 int trap_EA_SayTeam (int ,char*) ;

int BotMatchMessage(bot_state_t *bs, char *message) {
 bot_match_t match;

 match.type = 0;

 if (!trap_BotFindMatch(message, &match, MTCONTEXT_MISC
           |MTCONTEXT_INITIALTEAMCHAT
           |MTCONTEXT_CTF)) {
  return qfalse;
 }

 switch(match.type)
 {
  case 146:
  case 161:
  {
   BotMatch_HelpAccompany(bs, &match);
   break;
  }
  case 155:
  {
   BotMatch_DefendKeyArea(bs, &match);
   break;
  }
  case 159:
  {
   BotMatch_Camp(bs, &match);
   break;
  }
  case 140:
  {
   BotMatch_Patrol(bs, &match);
   break;
  }

  case 149:
  {
   BotMatch_GetFlag(bs, &match);
   break;
  }
  case 138:
  {
   BotMatch_RushBase(bs, &match);
   break;
  }

  case 139:
  {
   BotMatch_ReturnFlag(bs, &match);
   break;
  }

  case 134:
  {
   BotMatch_TaskPreference(bs, &match);
   break;
  }

  case 156:
  {
   BotMatch_CTF(bs, &match);
   break;
  }
  case 148:
  {
   BotMatch_GetItem(bs, &match);
   break;
  }
  case 145:
  {
   BotMatch_JoinSubteam(bs, &match);
   break;
  }
  case 142:
  {
   BotMatch_LeaveSubteam(bs, &match);
   break;
  }
  case 129:
  {
   BotMatch_WhichTeam(bs, &match);
   break;
  }
  case 158:
  {
   BotMatch_CheckPoint(bs, &match);
   break;
  }
  case 157:
  {
   trap_EA_SayTeam(bs->client, "the part of my brain to create formations has been damaged");
   break;
  }
  case 151:
  {
   trap_EA_SayTeam(bs->client, "the part of my brain to create formations has been damaged");
   break;
  }
  case 150:
  {
   BotMatch_FormationSpace(bs, &match);
   break;
  }
  case 153:
  {
   break;
  }
  case 154:
  {
   BotMatch_Dismiss(bs, &match);
   break;
  }
  case 137:
  {
   BotMatch_StartTeamLeaderShip(bs, &match);
   break;
  }
  case 136:
  {
   BotMatch_StopTeamLeaderShip(bs, &match);
   break;
  }
  case 128:
  {
   BotMatch_WhoIsTeamLeader(bs, &match);
   break;
  }
  case 132:
  {
   BotMatch_WhatAreYouDoing(bs, &match);
   break;
  }
  case 131:
  {
   BotMatch_WhatIsMyCommand(bs, &match);
   break;
  }
  case 130:
  {
   BotMatch_WhereAreYou(bs, &match);
   break;
  }
  case 143:
  {
   BotMatch_LeadTheWay(bs, &match);
   break;
  }
  case 144:
  {
   BotMatch_Kill(bs, &match);
   break;
  }
  case 152:
  {
   BotMatch_EnterGame(bs, &match);
   break;
  }
  case 141:
  {
   BotMatch_NewLeader(bs, &match);
   break;
  }
  case 133:
  {
   break;
  }
  case 135:
  {
   BotMatch_Suicide(bs, &match);
   break;
  }
  default:
  {
   BotAI_Print(PRT_MESSAGE, "unknown match type\n");
   break;
  }
 }
 return qtrue;
}
