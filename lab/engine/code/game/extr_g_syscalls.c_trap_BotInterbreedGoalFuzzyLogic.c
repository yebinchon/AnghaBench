
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_INTERBREED_GOAL_FUZZY_LOGIC ;
 int syscall (int ,int,int,int) ;

void trap_BotInterbreedGoalFuzzyLogic(int parent1, int parent2, int child) {
 syscall( BOTLIB_AI_INTERBREED_GOAL_FUZZY_LOGIC, parent1, parent2, child );
}
