
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_REMOVE_CONSOLE_MESSAGE ;
 int syscall (int ,int,int) ;

void trap_BotRemoveConsoleMessage(int chatstate, int handle) {
 syscall( BOTLIB_AI_REMOVE_CONSOLE_MESSAGE, chatstate, handle );
}
