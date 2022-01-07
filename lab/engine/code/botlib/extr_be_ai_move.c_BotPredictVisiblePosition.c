
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int areanum; int origin; int entitynum; } ;
typedef TYPE_1__ bot_goal_t ;
struct TYPE_7__ {int areanum; int end; int start; } ;
typedef TYPE_2__ aas_reachability_t ;


 int AAS_ReachabilityFromNum (int,TYPE_2__*) ;
 int BotGetReachabilityToGoal (int ,int,int,int,int*,float*,int*,TYPE_1__*,int,int *,int ,int *) ;
 scalar_t__ BotVisible (int ,int ,int ) ;
 int Com_Memset (int*,int ,int) ;
 int MAX_AVOIDREACH ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;

int BotPredictVisiblePosition(vec3_t origin, int areanum, bot_goal_t *goal, int travelflags, vec3_t target)
{
 aas_reachability_t reach;
 int reachnum, lastgoalareanum, lastareanum, i;
 int avoidreach[MAX_AVOIDREACH];
 float avoidreachtimes[MAX_AVOIDREACH];
 int avoidreachtries[MAX_AVOIDREACH];
 vec3_t end;


 if (!goal) return qfalse;

 if (!areanum) return qfalse;

 if (!goal->areanum) return qfalse;

 Com_Memset(avoidreach, 0, MAX_AVOIDREACH * sizeof(int));
 lastgoalareanum = goal->areanum;
 lastareanum = areanum;
 VectorCopy(origin, end);

 for (i = 0; i < 20 && (areanum != goal->areanum); i++)
 {

  reachnum = BotGetReachabilityToGoal(end, areanum,
      lastgoalareanum, lastareanum,
       avoidreach, avoidreachtimes, avoidreachtries,
         goal, travelflags, ((void*)0), 0, ((void*)0));
  if (!reachnum) return qfalse;
  AAS_ReachabilityFromNum(reachnum, &reach);

  if (BotVisible(goal->entitynum, goal->origin, reach.start))
  {
   VectorCopy(reach.start, target);
   return qtrue;
  }

  if (BotVisible(goal->entitynum, goal->origin, reach.end))
  {
   VectorCopy(reach.end, target);
   return qtrue;
  }

  if (reach.areanum == goal->areanum)
  {
   VectorCopy(reach.end, target);
   return qtrue;
  }

  lastareanum = areanum;
  areanum = reach.areanum;
  VectorCopy(reach.end, end);

 }

 return qfalse;
}
