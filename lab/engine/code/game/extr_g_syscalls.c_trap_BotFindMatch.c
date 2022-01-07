
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_FIND_MATCH ;
 int syscall (int ,char*,void*,unsigned long) ;

int trap_BotFindMatch(char *str, void *match, unsigned long int context) {
 return syscall( BOTLIB_AI_FIND_MATCH, str, match, context );
}
