
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int name ;
struct TYPE_8__ {size_t client; size_t lastkilledby; size_t lastkilledplayer; int cs; int botdeathtype; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_9__ {TYPE_1__* client; } ;
struct TYPE_7__ {int lasthurt_client; } ;


 int BotAI_BotInitialChat (TYPE_2__*,char*,char*,char*,...) ;
 int BotFirstClientInRankings () ;
 int BotLastClientInRankings () ;
 int BotMapTitle () ;
 int BotRandomOpponentName (TYPE_2__*) ;
 int BotRandomWeaponName () ;
 char* BotWeaponNameForMeansOfDeath (int ) ;
 int CHAT_ALL ;
 int ClientName (int ,char*,int) ;
 int EasyClientName (size_t,char*,int) ;
 TYPE_3__* g_entities ;
 int strcpy (char*,int ) ;
 int trap_BotEnterChat (int ,int ,int ) ;
 int trap_BotNumInitialChats (int ,char*) ;

void BotChatTest(bot_state_t *bs) {

 char name[32];
 char *weap;
 int num, i;

 num = trap_BotNumInitialChats(bs->cs, "game_enter");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "game_enter",
     EasyClientName(bs->client, name, 32),
     BotRandomOpponentName(bs),
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "game_exit");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "game_exit",
     EasyClientName(bs->client, name, 32),
     BotRandomOpponentName(bs),
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "level_start");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "level_start",
     EasyClientName(bs->client, name, 32),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "level_end_victory");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "level_end_victory",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    BotFirstClientInRankings(),
    BotLastClientInRankings(),
    BotMapTitle(),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "level_end_lose");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "level_end_lose",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    BotFirstClientInRankings(),
    BotLastClientInRankings(),
    BotMapTitle(),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "level_end");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "level_end",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    BotFirstClientInRankings(),
    BotLastClientInRankings(),
    BotMapTitle(),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 EasyClientName(bs->lastkilledby, name, sizeof(name));
 num = trap_BotNumInitialChats(bs->cs, "death_drown");
 for (i = 0; i < num; i++)
 {

  BotAI_BotInitialChat(bs, "death_drown", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_slime");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_slime", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_lava");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_lava", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_cratered");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_cratered", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_suicide");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_suicide", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_telefrag");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_telefrag", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_gauntlet");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_gauntlet",
    name,
    BotWeaponNameForMeansOfDeath(bs->botdeathtype),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_rail");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_rail",
    name,
    BotWeaponNameForMeansOfDeath(bs->botdeathtype),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_bfg");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_bfg",
    name,
    BotWeaponNameForMeansOfDeath(bs->botdeathtype),
    ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_insult");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_insult",
     name,
     BotWeaponNameForMeansOfDeath(bs->botdeathtype),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "death_praise");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "death_praise",
     name,
     BotWeaponNameForMeansOfDeath(bs->botdeathtype),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }

 EasyClientName(bs->lastkilledplayer, name, 32);

 num = trap_BotNumInitialChats(bs->cs, "kill_gauntlet");
 for (i = 0; i < num; i++)
 {

  BotAI_BotInitialChat(bs, "kill_gauntlet", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "kill_rail");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "kill_rail", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "kill_telefrag");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "kill_telefrag", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "kill_insult");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "kill_insult", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "kill_praise");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "kill_praise", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "enemy_suicide");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "enemy_suicide", name, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 ClientName(g_entities[bs->client].client->lasthurt_client, name, sizeof(name));
 weap = BotWeaponNameForMeansOfDeath(g_entities[bs->client].client->lasthurt_client);
 num = trap_BotNumInitialChats(bs->cs, "hit_talking");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "hit_talking", name, weap, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "hit_nodeath");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "hit_nodeath", name, weap, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "hit_nokill");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "hit_nokill", name, weap, ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }

 if (bs->lastkilledplayer == bs->client) {
  strcpy(name, BotRandomOpponentName(bs));
 }
 else {
  EasyClientName(bs->lastkilledplayer, name, sizeof(name));
 }

 num = trap_BotNumInitialChats(bs->cs, "random_misc");
 for (i = 0; i < num; i++)
 {

  BotAI_BotInitialChat(bs, "random_misc",
     BotRandomOpponentName(bs),
     name,
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     BotRandomWeaponName(),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
 num = trap_BotNumInitialChats(bs->cs, "random_insult");
 for (i = 0; i < num; i++)
 {
  BotAI_BotInitialChat(bs, "random_insult",
     BotRandomOpponentName(bs),
     name,
     "[invalid var]",
     "[invalid var]",
     BotMapTitle(),
     BotRandomWeaponName(),
     ((void*)0));
  trap_BotEnterChat(bs->cs, 0, CHAT_ALL);
 }
}
