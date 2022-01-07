
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int goalstacktop; TYPE_1__* goalstack; } ;
typedef TYPE_2__ bot_goalstate_t ;
struct TYPE_4__ {int number; } ;


 int BotGoalName (int ,char*,int) ;
 TYPE_2__* BotGoalStateFromHandle (int) ;
 int Log_Write (char*,int,char*) ;

void BotDumpGoalStack(int goalstate)
{
 int i;
 bot_goalstate_t *gs;
 char name[32];

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 for (i = 1; i <= gs->goalstacktop; i++)
 {
  BotGoalName(gs->goalstack[i].number, name, 32);
  Log_Write("%d: %s", i, name);
 }
}
