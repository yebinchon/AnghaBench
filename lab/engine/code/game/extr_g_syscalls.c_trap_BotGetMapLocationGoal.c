
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_MAP_LOCATION_GOAL ;
 int syscall (int ,char*,void*) ;

int trap_BotGetMapLocationGoal(char *name, void *goal) {
 return syscall( BOTLIB_AI_GET_MAP_LOCATION_GOAL, name, goal );
}
