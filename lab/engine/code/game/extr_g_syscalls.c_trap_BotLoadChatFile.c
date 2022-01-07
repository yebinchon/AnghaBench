
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_LOAD_CHAT_FILE ;
 int syscall (int ,int,char*,char*) ;

int trap_BotLoadChatFile(int chatstate, char *chatfile, char *chatname) {
 return syscall( BOTLIB_AI_LOAD_CHAT_FILE, chatstate, chatfile, chatname );
}
