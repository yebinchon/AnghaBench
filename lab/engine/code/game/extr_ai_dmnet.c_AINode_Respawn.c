
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int respawn_wait; double respawn_time; double respawnchat_time; int enemy; int client; int chatto; int cs; } ;
typedef TYPE_1__ bot_state_t ;


 int AIEnter_Seek_LTG (TYPE_1__*,char*) ;
 int BotIsDead (TYPE_1__*) ;
 double FloatTime () ;
 int qtrue ;
 int trap_BotEnterChat (int ,int ,int ) ;
 int trap_EA_Respawn (int ) ;
 int trap_EA_Talk (int ) ;

int AINode_Respawn(bot_state_t *bs) {

 if (bs->respawn_wait) {
  if (!BotIsDead(bs)) {
   AIEnter_Seek_LTG(bs, "respawn: respawned");
  }
  else {
   trap_EA_Respawn(bs->client);
  }
 }
 else if (bs->respawn_time < FloatTime()) {

  bs->respawn_wait = qtrue;

  trap_EA_Respawn(bs->client);

  if (bs->respawnchat_time) {
   trap_BotEnterChat(bs->cs, 0, bs->chatto);
   bs->enemy = -1;
  }
 }
 if (bs->respawnchat_time && bs->respawnchat_time < FloatTime() - 0.5) {
  trap_EA_Talk(bs->client);
 }

 return qtrue;
}
