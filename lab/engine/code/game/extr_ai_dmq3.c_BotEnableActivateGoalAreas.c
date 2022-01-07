
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int areasdisabled; int numareas; int * areas; } ;
typedef TYPE_1__ bot_activategoal_t ;


 int trap_AAS_EnableRoutingArea (int ,int) ;

void BotEnableActivateGoalAreas(bot_activategoal_t *activategoal, int enable) {
 int i;

 if (activategoal->areasdisabled == !enable)
  return;
 for (i = 0; i < activategoal->numareas; i++)
  trap_AAS_EnableRoutingArea( activategoal->areas[i], enable );
 activategoal->areasdisabled = !enable;
}
