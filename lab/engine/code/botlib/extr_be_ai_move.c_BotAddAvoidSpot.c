
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {size_t numavoidspots; TYPE_1__* avoidspots; } ;
typedef TYPE_2__ bot_movestate_t ;
struct TYPE_4__ {float radius; int type; int origin; } ;


 int AVOID_CLEAR ;
 TYPE_2__* BotMoveStateFromHandle (int) ;
 size_t MAX_AVOIDSPOTS ;
 int VectorCopy (int ,int ) ;

void BotAddAvoidSpot(int movestate, vec3_t origin, float radius, int type)
{
 bot_movestate_t *ms;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return;
 if (type == AVOID_CLEAR)
 {
  ms->numavoidspots = 0;
  return;
 }

 if (ms->numavoidspots >= MAX_AVOIDSPOTS)
  return;
 VectorCopy(origin, ms->avoidspots[ms->numavoidspots].origin);
 ms->avoidspots[ms->numavoidspots].radius = radius;
 ms->avoidspots[ms->numavoidspots].type = type;
 ms->numavoidspots++;
}
