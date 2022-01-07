
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ainode; int chatto; int cs; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Intermission ;
 scalar_t__ BotChat_EndLevel (TYPE_1__*) ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 int BotResetState (TYPE_1__*) ;
 int trap_BotEnterChat (int ,int ,int ) ;

void AIEnter_Intermission(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "intermission", "", s);

 BotResetState(bs);

 if (BotChat_EndLevel(bs)) {
  trap_BotEnterChat(bs->cs, 0, bs->chatto);
 }
 bs->ainode = AINode_Intermission;
}
