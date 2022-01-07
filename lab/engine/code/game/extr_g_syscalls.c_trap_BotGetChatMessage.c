
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_GET_CHAT_MESSAGE ;
 int syscall (int ,int,char*,int) ;

void trap_BotGetChatMessage(int chatstate, char *buf, int size) {
 syscall( BOTLIB_AI_GET_CHAT_MESSAGE, chatstate, buf, size);
}
