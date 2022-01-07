
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int playerState_t ;
struct TYPE_4__ {int inuse; int client; int entitynum; int character; int ms; int gs; int cs; int ws; float entergame_time; int settings; int cur_ps; int patrolpoints; int checkpoints; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_settings_t ;


 int BotFreeWaypoints (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_BotResetAvoidGoals (int) ;
 int trap_BotResetAvoidReach (int) ;
 int trap_BotResetGoalState (int) ;
 int trap_BotResetMoveState (int) ;
 int trap_BotResetWeaponState (int) ;

void BotResetState(bot_state_t *bs) {
 int client, entitynum, inuse;
 int movestate, goalstate, chatstate, weaponstate;
 bot_settings_t settings;
 int character;
 playerState_t ps;
 float entergame_time;


 memcpy(&settings, &bs->settings, sizeof(bot_settings_t));
 memcpy(&ps, &bs->cur_ps, sizeof(playerState_t));
 inuse = bs->inuse;
 client = bs->client;
 entitynum = bs->entitynum;
 character = bs->character;
 movestate = bs->ms;
 goalstate = bs->gs;
 chatstate = bs->cs;
 weaponstate = bs->ws;
 entergame_time = bs->entergame_time;

 BotFreeWaypoints(bs->checkpoints);
 BotFreeWaypoints(bs->patrolpoints);

 memset(bs, 0, sizeof(bot_state_t));

 bs->ms = movestate;
 bs->gs = goalstate;
 bs->cs = chatstate;
 bs->ws = weaponstate;
 memcpy(&bs->cur_ps, &ps, sizeof(playerState_t));
 memcpy(&bs->settings, &settings, sizeof(bot_settings_t));
 bs->inuse = inuse;
 bs->client = client;
 bs->entitynum = entitynum;
 bs->character = character;
 bs->entergame_time = entergame_time;

 if (bs->ms) trap_BotResetMoveState(bs->ms);
 if (bs->gs) trap_BotResetGoalState(bs->gs);
 if (bs->ws) trap_BotResetWeaponState(bs->ws);
 if (bs->gs) trap_BotResetAvoidGoals(bs->gs);
 if (bs->ms) trap_BotResetAvoidReach(bs->ms);
}
