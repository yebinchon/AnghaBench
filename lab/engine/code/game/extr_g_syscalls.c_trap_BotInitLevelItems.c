
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_INIT_LEVEL_ITEMS ;
 int syscall (int ) ;

void trap_BotInitLevelItems(void) {
 syscall( BOTLIB_AI_INIT_LEVEL_ITEMS );
}
