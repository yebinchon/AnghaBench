
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_TOUCHING_GOAL ;
 int syscall (int ,int ,void*) ;

int trap_BotTouchingGoal(vec3_t origin, void *goal) {
 return syscall( BOTLIB_AI_TOUCHING_GOAL, origin, goal );
}
