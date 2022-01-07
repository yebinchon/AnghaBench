
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,int) ;} ;


 int BotFreeItemWeights (int) ;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 int PRT_FATAL ;
 int ** botgoalstates ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void BotFreeGoalState(int handle)
{
 if (handle <= 0 || handle > MAX_CLIENTS)
 {
  botimport.Print(PRT_FATAL, "goal state handle %d out of range\n", handle);
  return;
 }
 if (!botgoalstates[handle])
 {
  botimport.Print(PRT_FATAL, "invalid goal state handle %d\n", handle);
  return;
 }
 BotFreeItemWeights(handle);
 FreeMemory(botgoalstates[handle]);
 botgoalstates[handle] = ((void*)0);
}
