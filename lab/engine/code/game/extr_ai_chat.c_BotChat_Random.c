
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int name ;
struct TYPE_10__ {scalar_t__ lastchat_time; scalar_t__ ltgtype; double thinktime; scalar_t__ lastkilledplayer; scalar_t__ client; int chatto; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,char*,char*,char*,int ,int ,int *) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotMapTitle () ;
 int BotNumActivePlayers () ;
 int BotRandomOpponentName (TYPE_1__*) ;
 int BotRandomWeaponName () ;
 int BotValidChatPosition (TYPE_1__*) ;
 scalar_t__ BotVisibleEnemies (TYPE_1__*) ;
 int CHARACTERISTIC_CHAT_MISC ;
 int CHARACTERISTIC_CHAT_RANDOM ;
 int CHAT_ALL ;
 int EasyClientName (scalar_t__,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 scalar_t__ LTG_RUSHBASE ;
 scalar_t__ LTG_TEAMACCOMPANY ;
 scalar_t__ LTG_TEAMHELP ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_3__ bot_fastchat ;
 TYPE_2__ bot_nochat ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 double random () ;
 int strcpy (char*,int ) ;
 double trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Command (scalar_t__,char*) ;

int BotChat_Random(bot_state_t *bs) {
 float rnd;
 char name[32];

 if (bot_nochat.integer) return qfalse;
 if (BotIsObserver(bs)) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (bs->ltgtype == LTG_TEAMHELP ||
  bs->ltgtype == LTG_TEAMACCOMPANY ||
  bs->ltgtype == LTG_RUSHBASE) return qfalse;

 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_RANDOM, 0, 1);
 if (random() > bs->thinktime * 0.1) return qfalse;
 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
  if (random() > 0.25) return qfalse;
 }
 if (BotNumActivePlayers() <= 1) return qfalse;

 if (!BotValidChatPosition(bs)) return qfalse;

 if (BotVisibleEnemies(bs)) return qfalse;

 if (bs->lastkilledplayer == bs->client) {
  strcpy(name, BotRandomOpponentName(bs));
 }
 else {
  EasyClientName(bs->lastkilledplayer, name, sizeof(name));
 }
 if (TeamPlayIsOn()) {



  return qfalse;
 }

 if (random() < trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_MISC, 0, 1)) {
  BotAI_BotInitialChat(bs, "random_misc",
     BotRandomOpponentName(bs),
     name,
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     BotRandomWeaponName(),
     ((void*)0));
 }
 else {
  BotAI_BotInitialChat(bs, "random_insult",
     BotRandomOpponentName(bs),
     name,
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     BotRandomWeaponName(),
     ((void*)0));
 }
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
