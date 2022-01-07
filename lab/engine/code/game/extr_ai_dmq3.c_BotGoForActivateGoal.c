
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bot_state_t ;
struct TYPE_8__ {int entitynum; } ;
struct TYPE_9__ {int inuse; int origin; TYPE_1__ goal; void* start_time; void* time; } ;
typedef TYPE_2__ bot_activategoal_t ;
struct TYPE_10__ {int origin; } ;
typedef TYPE_3__ aas_entityinfo_t ;


 int AIEnter_Seek_ActivateEntity (int *,char*) ;
 int BotEnableActivateGoalAreas (TYPE_2__*,int) ;
 int BotEntityInfo (int ,TYPE_3__*) ;
 scalar_t__ BotPushOntoActivateGoalStack (int *,TYPE_2__*) ;
 void* FloatTime () ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;

int BotGoForActivateGoal(bot_state_t *bs, bot_activategoal_t *activategoal) {
 aas_entityinfo_t activateinfo;

 activategoal->inuse = qtrue;
 if (!activategoal->time)
  activategoal->time = FloatTime() + 10;
 activategoal->start_time = FloatTime();
 BotEntityInfo(activategoal->goal.entitynum, &activateinfo);
 VectorCopy(activateinfo.origin, activategoal->origin);

 if (BotPushOntoActivateGoalStack(bs, activategoal)) {

  AIEnter_Seek_ActivateEntity(bs, "BotGoForActivateGoal");
  return qtrue;
 }
 else {

  BotEnableActivateGoalAreas(activategoal, qtrue);
  return qfalse;
 }
}
