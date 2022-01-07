
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_LEVEL_ITEM_GOAL ;
 int syscall (int ,int,char*,void*) ;

int trap_BotGetLevelItemGoal(int index, char *classname, void *goal) {
 return syscall( BOTLIB_AI_GET_LEVEL_ITEM_GOAL, index, classname, goal );
}
