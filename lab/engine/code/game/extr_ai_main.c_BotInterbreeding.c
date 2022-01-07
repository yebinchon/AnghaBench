
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int client; scalar_t__ inuse; } ;
struct TYPE_5__ {int string; } ;


 int BotAIShutdownClient (int ,int ) ;
 int EXEC_INSERT ;
 int ExitLevel () ;
 scalar_t__ GT_TOURNAMENT ;
 int MAX_CLIENTS ;
 int bot_interbreed ;
 TYPE_4__ bot_interbreedbots ;
 TYPE_1__ bot_interbreedchar ;
 TYPE_2__** botstates ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 int strlen (int ) ;
 int trap_BotLibVarSet (char*,char*) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_Update (TYPE_1__*) ;
 int trap_SendConsoleCommand (int ,char*) ;
 char* va (char*,scalar_t__,...) ;

void BotInterbreeding(void) {
 int i;

 trap_Cvar_Update(&bot_interbreedchar);
 if (!strlen(bot_interbreedchar.string)) return;

 if (gametype != GT_TOURNAMENT) {
  trap_Cvar_Set("g_gametype", va("%d", GT_TOURNAMENT));
  ExitLevel();
  return;
 }

 for (i = 0; i < MAX_CLIENTS; i++) {
  if (botstates[i] && botstates[i]->inuse) {
   BotAIShutdownClient(botstates[i]->client, qfalse);
  }
 }

 trap_BotLibVarSet("bot_reloadcharacters", "1");

 for (i = 0; i < bot_interbreedbots.integer; i++) {
  trap_SendConsoleCommand( EXEC_INSERT, va("addbot %s 4 free %i %s%d\n",
      bot_interbreedchar.string, i * 50, bot_interbreedchar.string, i) );
 }

 trap_Cvar_Set("bot_interbreedchar", "");
 bot_interbreed = qtrue;
}
