
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AI_CHOOSE_LTG_ITEM ;
 int syscall (int ,int,int ,int*,int) ;

int trap_BotChooseLTGItem(int goalstate, vec3_t origin, int *inventory, int travelflags) {
 return syscall( BOTLIB_AI_CHOOSE_LTG_ITEM, goalstate, origin, inventory, travelflags );
}
