
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_7__ {int inuse; int patrolpoints; int checkpoints; int character; int ws; int cs; int gs; int ms; int client; } ;
typedef TYPE_1__ bot_state_t ;


 scalar_t__ BotChat_ExitGame (TYPE_1__*) ;
 int BotClearActivateGoalStack (TYPE_1__*) ;
 int BotFreeWaypoints (int ) ;
 int BotWriteSessionData (TYPE_1__*) ;
 int CHAT_ALL ;
 TYPE_1__** botstates ;
 int memset (TYPE_1__*,int ,int) ;
 int numbots ;
 int qfalse ;
 int qtrue ;
 int trap_BotEnterChat (int ,int ,int ) ;
 int trap_BotFreeCharacter (int ) ;
 int trap_BotFreeChatState (int ) ;
 int trap_BotFreeGoalState (int ) ;
 int trap_BotFreeMoveState (int ) ;
 int trap_BotFreeWeaponState (int ) ;

int BotAIShutdownClient(int client, qboolean restart) {
 bot_state_t *bs;

 bs = botstates[client];
 if (!bs || !bs->inuse) {

  return qfalse;
 }

 if (restart) {
  BotWriteSessionData(bs);
 }

 if (BotChat_ExitGame(bs)) {
  trap_BotEnterChat(bs->cs, bs->client, CHAT_ALL);
 }

 trap_BotFreeMoveState(bs->ms);

 trap_BotFreeGoalState(bs->gs);

 trap_BotFreeChatState(bs->cs);

 trap_BotFreeWeaponState(bs->ws);

 trap_BotFreeCharacter(bs->character);

 BotFreeWaypoints(bs->checkpoints);
 BotFreeWaypoints(bs->patrolpoints);

 BotClearActivateGoalStack(bs);

 memset(bs, 0, sizeof(bot_state_t));

 bs->inuse = qfalse;

 numbots--;

 return qtrue;
}
