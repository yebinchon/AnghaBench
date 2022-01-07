
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_NEXT_CONSOLE_MESSAGE ;
 int syscall (int ,int,void*) ;

int trap_BotNextConsoleMessage(int chatstate, void *cm) {
 return syscall( BOTLIB_AI_NEXT_CONSOLE_MESSAGE, chatstate, cm );
}
