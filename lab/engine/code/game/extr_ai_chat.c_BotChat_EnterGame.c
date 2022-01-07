
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lastchat_time; int chatto; int client; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,int ,char*,char*,int ,int *) ;
 int BotMapTitle () ;
 int BotNumActivePlayers () ;
 int BotRandomOpponentName (TYPE_1__*) ;
 int BotValidChatPosition (TYPE_1__*) ;
 int CHARACTERISTIC_CHAT_ENTEREXITGAME ;
 int CHAT_ALL ;
 int EasyClientName (int ,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_3__ bot_fastchat ;
 TYPE_2__ bot_nochat ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 float random () ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;

int BotChat_EnterGame(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;

 if (TeamPlayIsOn()) return qfalse;

 if (gametype == GT_TOURNAMENT) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_ENTEREXITGAME, 0, 1);
 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (BotNumActivePlayers() <= 1) return qfalse;
 if (!BotValidChatPosition(bs)) return qfalse;
 BotAI_BotInitialChat(bs, "game_enter",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    "[invalid var]",
    "[invalid var]",
    BotMapTitle(),
    ((void*)0));
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
