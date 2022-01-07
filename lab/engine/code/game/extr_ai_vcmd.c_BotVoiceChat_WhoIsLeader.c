
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netname ;
struct TYPE_5__ {int cs; int teamleader; int client; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int *) ;
 int BotVoiceChatOnly (TYPE_1__*,int,int ) ;
 int CHAT_TEAM ;
 int ClientName (int ,char*,int) ;
 int MAX_MESSAGE_SIZE ;
 int Q_stricmp (char*,int ) ;
 int TeamPlayIsOn () ;
 int VOICECHAT_STARTLEADER ;
 int trap_BotEnterChat (int ,int ,int ) ;

void BotVoiceChat_WhoIsLeader(bot_state_t *bs, int client, int mode) {
 char netname[MAX_MESSAGE_SIZE];

 if (!TeamPlayIsOn()) return;

 ClientName(bs->client, netname, sizeof(netname));

 if (!Q_stricmp(netname, bs->teamleader)) {
  BotAI_BotInitialChat(bs, "iamteamleader", ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_TEAM);
  BotVoiceChatOnly(bs, -1, VOICECHAT_STARTLEADER);
 }
}
