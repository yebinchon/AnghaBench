
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_REMOVE_FROM_AVOID_GOALS ;
 int syscall (int ,int,int) ;

void trap_BotRemoveFromAvoidGoals(int goalstate, int number) {
 syscall( BOTLIB_AI_REMOVE_FROM_AVOID_GOALS, goalstate, number);
}
