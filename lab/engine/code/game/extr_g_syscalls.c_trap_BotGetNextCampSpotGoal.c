
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_NEXT_CAMP_SPOT_GOAL ;
 int syscall (int ,int,void*) ;

int trap_BotGetNextCampSpotGoal(int num, void *goal) {
 return syscall( BOTLIB_AI_GET_NEXT_CAMP_SPOT_GOAL, num, goal );
}
