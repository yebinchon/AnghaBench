
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* avoidgoaltimes; int * avoidgoals; } ;
typedef TYPE_1__ bot_goalstate_t ;


 scalar_t__ AAS_Time () ;
 int BotGoalName (int ,char*,int) ;
 TYPE_1__* BotGoalStateFromHandle (int) ;
 int Log_Write (char*,char*,int ,scalar_t__) ;
 int MAX_AVOIDGOALS ;

void BotDumpAvoidGoals(int goalstate)
{
 int i;
 bot_goalstate_t *gs;
 char name[32];

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 for (i = 0; i < MAX_AVOIDGOALS; i++)
 {
  if (gs->avoidgoaltimes[i] >= AAS_Time())
  {
   BotGoalName(gs->avoidgoals[i], name, 32);
   Log_Write("avoid goal %s, number %d for %f seconds", name,
    gs->avoidgoals[i], gs->avoidgoaltimes[i] - AAS_Time());
  }
 }
}
