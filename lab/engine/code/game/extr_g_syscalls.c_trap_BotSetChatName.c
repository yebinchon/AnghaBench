
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_SET_CHAT_NAME ;
 int syscall (int ,int,char*,int) ;

void trap_BotSetChatName(int chatstate, char *name, int client) {
 syscall( BOTLIB_AI_SET_CHAT_NAME, chatstate, name, client );
}
