
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int teammates ;
typedef int name ;
typedef int carriername ;
struct TYPE_8__ {int flagcarrier; int client; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,char*,...) ;
 int BotSayTeamOrder (TYPE_1__*,int) ;
 int BotSayVoiceTeamOrder (TYPE_1__*,int,int ) ;
 int BotSortTeamMatesByBaseTravelTime (TYPE_1__*,int*,int) ;
 int BotSortTeamMatesByTaskPreference (TYPE_1__*,int*,int) ;
 int ClientName (int,char*,int) ;
 int MAX_CLIENTS ;
 int MAX_NETNAME ;
 int VOICECHAT_DEFEND ;
 int VOICECHAT_FOLLOWFLAGCARRIER ;
 int VOICECHAT_FOLLOWME ;
 int VOICECHAT_GETFLAG ;

void BotCTFOrders_EnemyFlagNotAtBase(bot_state_t *bs) {
 int numteammates, defenders, attackers, i, other;
 int teammates[MAX_CLIENTS];
 char name[MAX_NETNAME], carriername[MAX_NETNAME];

 numteammates = BotSortTeamMatesByBaseTravelTime(bs, teammates, sizeof(teammates));
 BotSortTeamMatesByTaskPreference(bs, teammates, numteammates);

 switch(numteammates) {
  case 1: break;
  case 2:
  {

   if (teammates[0] == bs->flagcarrier) other = teammates[1];
   else other = teammates[0];
   ClientName(other, name, sizeof(name));
   BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
   BotSayTeamOrder(bs, other);
   BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
   break;
  }
  case 3:
  {

   if (teammates[0] != bs->flagcarrier) other = teammates[0];
   else other = teammates[1];
   ClientName(other, name, sizeof(name));
   BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
   BotSayTeamOrder(bs, other);
   BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);

   if (teammates[2] != bs->flagcarrier) other = teammates[2];
   else other = teammates[1];
   ClientName(other, name, sizeof(name));
   BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
   BotSayTeamOrder(bs, other);
   BotSayVoiceTeamOrder(bs, other, VOICECHAT_DEFEND);
   break;
  }
  default:
  {

   defenders = (int) (float) numteammates * 0.6 + 0.5;
   if (defenders > 6) defenders = 6;

   attackers = (int) (float) numteammates * 0.3 + 0.5;
   if (attackers > 3) attackers = 3;
   for (i = 0; i < defenders; i++) {

    if (teammates[i] == bs->flagcarrier) {
     continue;
    }
    ClientName(teammates[i], name, sizeof(name));
    BotAI_BotInitialChat(bs, "cmd_defendbase", name, ((void*)0));
    BotSayTeamOrder(bs, teammates[i]);
    BotSayVoiceTeamOrder(bs, teammates[i], VOICECHAT_DEFEND);
   }

   if ( bs->flagcarrier != -1 ) {
    ClientName(bs->flagcarrier, carriername, sizeof(carriername));
    for (i = 0; i < attackers; i++) {

     if (teammates[numteammates - i - 1] == bs->flagcarrier) {
      continue;
     }

     ClientName(teammates[numteammates - i - 1], name, sizeof(name));
     if (bs->flagcarrier == bs->client) {
      BotAI_BotInitialChat(bs, "cmd_accompanyme", name, ((void*)0));
      BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWME);
     }
     else {
      BotAI_BotInitialChat(bs, "cmd_accompany", name, carriername, ((void*)0));
      BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_FOLLOWFLAGCARRIER);
     }
     BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
    }
   }
   else {
    for (i = 0; i < attackers; i++) {

     if (teammates[numteammates - i - 1] == bs->flagcarrier) {
      continue;
     }

     ClientName(teammates[numteammates - i - 1], name, sizeof(name));
     BotAI_BotInitialChat(bs, "cmd_getflag", name, ((void*)0));
     BotSayVoiceTeamOrder(bs, teammates[numteammates - i - 1], VOICECHAT_GETFLAG);
     BotSayTeamOrder(bs, teammates[numteammates - i - 1]);
    }
   }

   break;
  }
 }
}
