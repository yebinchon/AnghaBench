
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_UNIFY_WHITE_SPACES ;
 int syscall (int ,char*) ;

void trap_UnifyWhiteSpaces(char *string) {
 syscall( BOTLIB_AI_UNIFY_WHITE_SPACES, string );
}
