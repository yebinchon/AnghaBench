
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int lastreachnum; int lastareanum; int avoidreachtries; int avoidreachtimes; int avoidreach; int lastgoalareanum; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_9__ {int areanum; int origin; } ;
typedef TYPE_2__ bot_goal_t ;
struct TYPE_10__ {int traveltype; int areanum; int end; int start; } ;
typedef TYPE_3__ aas_reachability_t ;


 int AAS_ReachabilityFromNum (int,TYPE_3__*) ;
 scalar_t__ BotAddToTarget (int ,int ,float,float*,int ) ;
 int BotGetReachabilityToGoal (int ,int,int ,int,int ,int ,int ,TYPE_2__*,int,int *,int ,int *) ;
 TYPE_1__* BotMoveStateFromHandle (int) ;
 int TRAVELTYPE_MASK ;
 int TRAVEL_BFGJUMP ;
 int TRAVEL_ELEVATOR ;
 int TRAVEL_FUNCBOB ;
 int TRAVEL_JUMPPAD ;
 int TRAVEL_ROCKETJUMP ;
 int TRAVEL_TELEPORT ;
 int VectorCopy (int ,int ) ;
 int qfalse ;
 int qtrue ;

int BotMovementViewTarget(int movestate, bot_goal_t *goal, int travelflags, float lookahead, vec3_t target)
{
 aas_reachability_t reach;
 int reachnum, lastareanum;
 bot_movestate_t *ms;
 vec3_t end;
 float dist;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return qfalse;

 if (!ms->lastreachnum || !goal) return qfalse;

 reachnum = ms->lastreachnum;
 VectorCopy(ms->origin, end);
 lastareanum = ms->lastareanum;
 dist = 0;
 while(reachnum && dist < lookahead)
 {
  AAS_ReachabilityFromNum(reachnum, &reach);
  if (BotAddToTarget(end, reach.start, lookahead, &dist, target)) return qtrue;

  if ((reach.traveltype & TRAVELTYPE_MASK) == TRAVEL_TELEPORT) return qtrue;

  if ((reach.traveltype & TRAVELTYPE_MASK) == TRAVEL_ROCKETJUMP) return qtrue;
  if ((reach.traveltype & TRAVELTYPE_MASK) == TRAVEL_BFGJUMP) return qtrue;

  if ((reach.traveltype & TRAVELTYPE_MASK) != TRAVEL_JUMPPAD &&
   (reach.traveltype & TRAVELTYPE_MASK) != TRAVEL_ELEVATOR &&
   (reach.traveltype & TRAVELTYPE_MASK) != TRAVEL_FUNCBOB)
  {
   if (BotAddToTarget(reach.start, reach.end, lookahead, &dist, target)) return qtrue;
  }
  reachnum = BotGetReachabilityToGoal(reach.end, reach.areanum,
      ms->lastgoalareanum, lastareanum,
       ms->avoidreach, ms->avoidreachtimes, ms->avoidreachtries,
         goal, travelflags, ((void*)0), 0, ((void*)0));
  VectorCopy(reach.end, end);
  lastareanum = reach.areanum;
  if (lastareanum == goal->areanum)
  {
   BotAddToTarget(reach.end, goal->origin, lookahead, &dist, target);
   return qtrue;
  }
 }

 return qfalse;
}
