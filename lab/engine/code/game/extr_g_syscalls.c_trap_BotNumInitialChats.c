
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_NUM_INITIAL_CHATS ;
 int syscall (int ,int,char*) ;

int trap_BotNumInitialChats(int chatstate, char *type) {
 return syscall( BOTLIB_AI_NUM_INITIAL_CHATS, chatstate, type );
}
