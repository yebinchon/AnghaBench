
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* avoidreach; scalar_t__* avoidreachtimes; int* avoidreachtries; } ;
typedef TYPE_1__ bot_movestate_t ;


 scalar_t__ AAS_Time () ;
 int MAX_AVOIDREACH ;

void BotAddToAvoidReach(bot_movestate_t *ms, int number, float avoidtime)
{
 int i;

 for (i = 0; i < MAX_AVOIDREACH; i++)
 {
  if (ms->avoidreach[i] == number)
  {
   if (ms->avoidreachtimes[i] > AAS_Time()) ms->avoidreachtries[i]++;
   else ms->avoidreachtries[i] = 1;
   ms->avoidreachtimes[i] = AAS_Time() + avoidtime;
   return;
  }
 }

 for (i = 0; i < MAX_AVOIDREACH; i++)
 {
  if (ms->avoidreachtimes[i] < AAS_Time())
  {
   ms->avoidreach[i] = number;
   ms->avoidreachtimes[i] = AAS_Time() + avoidtime;
   ms->avoidreachtries[i] = 1;
   return;
  }
 }
}
