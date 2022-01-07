
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ainode; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Observer ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 int BotResetState (TYPE_1__*) ;

void AIEnter_Observer(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "observer", "", s);

 BotResetState(bs);
 bs->ainode = AINode_Observer;
}
