
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_DUMP_GOAL_STACK ;
 int syscall (int ,int) ;

void trap_BotDumpGoalStack(int goalstate) {
 syscall( BOTLIB_AI_DUMP_GOAL_STACK, goalstate );
}
