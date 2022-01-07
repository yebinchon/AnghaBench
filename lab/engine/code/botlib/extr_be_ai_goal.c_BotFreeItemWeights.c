
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ itemweightindex; scalar_t__ itemweightconfig; } ;
typedef TYPE_1__ bot_goalstate_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int FreeMemory (scalar_t__) ;
 int FreeWeightConfig (scalar_t__) ;

void BotFreeItemWeights(int goalstate)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 if (gs->itemweightconfig) FreeWeightConfig(gs->itemweightconfig);
 if (gs->itemweightindex) FreeMemory(gs->itemweightindex);
}
