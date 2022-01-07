
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* avoidgoals; scalar_t__* avoidgoaltimes; } ;
typedef TYPE_1__ bot_goalstate_t ;


 scalar_t__ AAS_Time () ;
 int MAX_AVOIDGOALS ;

void BotAddToAvoidGoals(bot_goalstate_t *gs, int number, float avoidtime)
{
 int i;

 for (i = 0; i < MAX_AVOIDGOALS; i++)
 {

  if (gs->avoidgoals[i] == number)
  {
   gs->avoidgoals[i] = number;
   gs->avoidgoaltimes[i] = AAS_Time() + avoidtime;
   return;
  }
 }

 for (i = 0; i < MAX_AVOIDGOALS; i++)
 {

  if (gs->avoidgoaltimes[i] < AAS_Time())
  {
   gs->avoidgoals[i] = number;
   gs->avoidgoaltimes[i] = AAS_Time() + avoidtime;
   return;
  }
 }
}
