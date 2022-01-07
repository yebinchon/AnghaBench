
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_MATCH_VARIABLE ;
 int syscall (int ,void*,int,char*,int) ;

void trap_BotMatchVariable(void *match, int variable, char *buf, int size) {
 syscall( BOTLIB_AI_MATCH_VARIABLE, match, variable, buf, size );
}
