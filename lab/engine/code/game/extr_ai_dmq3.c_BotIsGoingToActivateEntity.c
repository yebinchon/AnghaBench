
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* activategoalheap; TYPE_5__* activatestack; } ;
typedef TYPE_4__ bot_state_t ;
struct TYPE_9__ {int entitynum; } ;
struct TYPE_11__ {int time; TYPE_3__ goal; struct TYPE_11__* next; } ;
typedef TYPE_5__ bot_activategoal_t ;
struct TYPE_7__ {int entitynum; } ;
struct TYPE_8__ {int justused_time; TYPE_1__ goal; scalar_t__ inuse; } ;


 int FloatTime () ;
 int MAX_ACTIVATESTACK ;
 int qfalse ;
 int qtrue ;

int BotIsGoingToActivateEntity(bot_state_t *bs, int entitynum) {
 bot_activategoal_t *a;
 int i;

 for (a = bs->activatestack; a; a = a->next) {
  if (a->time < FloatTime())
   continue;
  if (a->goal.entitynum == entitynum)
   return qtrue;
 }
 for (i = 0; i < MAX_ACTIVATESTACK; i++) {
  if (bs->activategoalheap[i].inuse)
   continue;

  if (bs->activategoalheap[i].goal.entitynum == entitynum) {

   if (bs->activategoalheap[i].justused_time > FloatTime() - 2)
    return qtrue;
  }
 }
 return qfalse;
}
