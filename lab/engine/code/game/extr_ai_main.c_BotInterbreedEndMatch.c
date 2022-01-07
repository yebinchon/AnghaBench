
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int string; } ;


 int BotInterbreedBots () ;
 int BotWriteInterbreeded (int ) ;
 int bot_interbreed ;
 TYPE_3__ bot_interbreedcycle ;
 scalar_t__ bot_interbreedmatchcount ;
 TYPE_1__ bot_interbreedwrite ;
 scalar_t__ strlen (int ) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_Update (TYPE_1__*) ;

void BotInterbreedEndMatch(void) {

 if (!bot_interbreed) return;
 bot_interbreedmatchcount++;
 if (bot_interbreedmatchcount >= bot_interbreedcycle.integer) {
  bot_interbreedmatchcount = 0;

  trap_Cvar_Update(&bot_interbreedwrite);
  if (strlen(bot_interbreedwrite.string)) {
   BotWriteInterbreeded(bot_interbreedwrite.string);
   trap_Cvar_Set("bot_interbreedwrite", "");
  }
  BotInterbreedBots();
 }
}
