
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_RESET_AVOID_GOALS ;
 int syscall (int ,int) ;

void trap_BotResetAvoidGoals(int goalstate) {
 syscall( BOTLIB_AI_RESET_AVOID_GOALS, goalstate );
}
