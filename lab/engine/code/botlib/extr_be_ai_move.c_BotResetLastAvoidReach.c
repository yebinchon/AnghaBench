
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* avoidreachtimes; scalar_t__* avoidreachtries; } ;
typedef TYPE_1__ bot_movestate_t ;


 TYPE_1__* BotMoveStateFromHandle (int) ;
 int MAX_AVOIDREACH ;

void BotResetLastAvoidReach(int movestate)
{
 int i, latest;
 float latesttime;
 bot_movestate_t *ms;

 ms = BotMoveStateFromHandle(movestate);
 if (!ms) return;
 latesttime = 0;
 latest = 0;
 for (i = 0; i < MAX_AVOIDREACH; i++)
 {
  if (ms->avoidreachtimes[i] > latesttime)
  {
   latesttime = ms->avoidreachtimes[i];
   latest = i;
  }
 }
 if (latesttime)
 {
  ms->avoidreachtimes[latest] = 0;
  if (ms->avoidreachtries[latest] > 0) ms->avoidreachtries[latest]--;
 }
}
