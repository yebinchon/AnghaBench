
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int model ;
typedef int bot_state_t ;
struct TYPE_4__ {int* origin; int areanum; int entitynum; scalar_t__ flags; scalar_t__ number; int maxs; int mins; } ;
struct TYPE_5__ {int shoot; TYPE_1__ goal; int target; } ;
typedef TYPE_2__ bot_activategoal_t ;


 int BotModelMinsMaxs (int,int ,int ,int*,int*) ;
 int CONTENTS_TRIGGER ;
 int VectorAdd (int*,int*,int*) ;
 int VectorClear (int ) ;
 int VectorCopy (int*,int*) ;
 int VectorScale (int*,double,int*) ;
 int VectorSubtract (int*,int*,int ) ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ trap_AAS_AreaReachability (int) ;
 int trap_AAS_TraceAreas (int*,int*,int*,int *,int) ;
 int trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;

int BotTriggerMultipleActivateGoal(bot_state_t *bs, int bspent, bot_activategoal_t *activategoal) {
 int i, areas[10], numareas, modelindex, entitynum;
 char model[128];
 vec3_t start, end, mins, maxs;
 vec3_t origin, goalorigin;

 activategoal->shoot = qfalse;
 VectorClear(activategoal->target);

 trap_AAS_ValueForBSPEpairKey(bspent, "model", model, sizeof(model));
 if (!*model)
  return qfalse;
 modelindex = atoi(model+1);
 if (!modelindex)
  return qfalse;
 entitynum = BotModelMinsMaxs(modelindex, 0, CONTENTS_TRIGGER, mins, maxs);

 VectorAdd(mins, maxs, origin);
 VectorScale(origin, 0.5, origin);
 VectorCopy(origin, goalorigin);

 VectorCopy(goalorigin, start);
 start[2] += 24;
 VectorCopy(start, end);
 end[2] -= 100;
 numareas = trap_AAS_TraceAreas(start, end, areas, ((void*)0), 10);

 for (i = 0; i < numareas; i++) {
  if (trap_AAS_AreaReachability(areas[i])) {
   break;
  }
 }
 if (i < numareas) {
  VectorCopy(origin, activategoal->goal.origin);
  activategoal->goal.areanum = areas[i];
  VectorSubtract(mins, origin, activategoal->goal.mins);
  VectorSubtract(maxs, origin, activategoal->goal.maxs);

  activategoal->goal.entitynum = entitynum;
  activategoal->goal.number = 0;
  activategoal->goal.flags = 0;
  return qtrue;
 }
 return qfalse;
}
