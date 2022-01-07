
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ainode; scalar_t__ standfindenemy_time; } ;
typedef TYPE_1__ bot_state_t ;


 int AINode_Stand ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 scalar_t__ FloatTime () ;

void AIEnter_Stand(bot_state_t *bs, char *s) {
 BotRecordNodeSwitch(bs, "stand", "", s);
 bs->standfindenemy_time = FloatTime() + 1;
 bs->ainode = AINode_Stand;
}
