
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int decisionmaker; int cs; scalar_t__ lastgoal_ltgtype; scalar_t__ lead_time; scalar_t__ ltgtype; } ;
typedef TYPE_1__ bot_state_t ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int *) ;
 int BotPrintTeamGoal (TYPE_1__*) ;
 int BotSetTeamStatus (TYPE_1__*) ;
 int BotVoiceChatOnly (TYPE_1__*,int,int ) ;
 int CHAT_TELL ;
 int VOICECHAT_ONPATROL ;
 int trap_BotEnterChat (int ,int,int ) ;

void BotVoiceChat_Patrol(bot_state_t *bs, int client, int mode) {

 bs->decisionmaker = client;

 bs->ltgtype = 0;
 bs->lead_time = 0;
 bs->lastgoal_ltgtype = 0;

 BotAI_BotInitialChat(bs, "dismissed", ((void*)0));
 trap_BotEnterChat(bs->cs, client, CHAT_TELL);
 BotVoiceChatOnly(bs, -1, VOICECHAT_ONPATROL);

 BotSetTeamStatus(bs);



}
