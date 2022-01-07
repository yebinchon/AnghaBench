
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ bot_goal_t ;


 int GFL_DROPPED ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;
 int trap_BotGetLevelItemGoal (int,char*,TYPE_1__*) ;

int BotGetItemTeamGoal(char *goalname, bot_goal_t *goal) {
 int i;

 if (!strlen(goalname)) return qfalse;
 i = -1;
 do {
  i = trap_BotGetLevelItemGoal(i, goalname, goal);
  if (i > 0) {

   if (goal->flags & GFL_DROPPED)
    continue;
   return qtrue;
  }
 } while(i > 0);
 return qfalse;
}
