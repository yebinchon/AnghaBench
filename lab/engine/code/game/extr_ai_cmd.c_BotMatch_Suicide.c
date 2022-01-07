
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netname ;
struct TYPE_5__ {int client; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int ACTION_AFFIRMATIVE ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 int BotVoiceChat (TYPE_1__*,int,int ) ;
 int ClientFromName (char*) ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int TeamPlayIsOn () ;
 int VOICECHAT_TAUNT ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;
 int trap_EA_Action (int ,int ) ;
 int trap_EA_Command (int ,char*) ;

void BotMatch_Suicide(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_MESSAGE_SIZE];
 int client;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 trap_EA_Command(bs->client, "kill");

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = ClientFromName(netname);

 BotVoiceChat(bs, client, VOICECHAT_TAUNT);
 trap_EA_Action(bs->client, ACTION_AFFIRMATIVE);
}
