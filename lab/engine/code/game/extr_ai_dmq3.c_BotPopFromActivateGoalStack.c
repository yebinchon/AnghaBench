
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* activatestack; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_5__ {int inuse; struct TYPE_5__* next; int justused_time; } ;


 int BotEnableActivateGoalAreas (TYPE_3__*,int) ;
 int FloatTime () ;
 int qfalse ;
 int qtrue ;

int BotPopFromActivateGoalStack(bot_state_t *bs) {
 if (!bs->activatestack)
  return qfalse;
 BotEnableActivateGoalAreas(bs->activatestack, qtrue);
 bs->activatestack->inuse = qfalse;
 bs->activatestack->justused_time = FloatTime();
 bs->activatestack = bs->activatestack->next;
 return qtrue;
}
