
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int name ;
typedef int leadername ;
struct TYPE_5__ {int client; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,char*,...) ;
 int BotSayTeamOrderAlways (TYPE_1__*,int) ;
 int ClientName (int,char*,int) ;
 int MAX_NETNAME ;

void BotCreateGroup(bot_state_t *bs, int *teammates, int groupsize) {
 char name[MAX_NETNAME], leadername[MAX_NETNAME];
 int i;


 ClientName(teammates[0], leadername, sizeof(leadername));
 for (i = 1; i < groupsize; i++)
 {
  ClientName(teammates[i], name, sizeof(name));
  if (teammates[0] == bs->client) {
   BotAI_BotInitialChat(bs, "cmd_accompanyme", name, ((void*)0));
  }
  else {
   BotAI_BotInitialChat(bs, "cmd_accompany", name, leadername, ((void*)0));
  }
  BotSayTeamOrderAlways(bs, teammates[i]);
 }
}
