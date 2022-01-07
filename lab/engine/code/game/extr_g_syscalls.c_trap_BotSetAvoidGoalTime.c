
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_SET_AVOID_GOAL_TIME ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int,int ) ;

void trap_BotSetAvoidGoalTime(int goalstate, int number, float avoidtime) {
 syscall( BOTLIB_AI_SET_AVOID_GOAL_TIME, goalstate, number, PASSFLOAT(avoidtime));
}
