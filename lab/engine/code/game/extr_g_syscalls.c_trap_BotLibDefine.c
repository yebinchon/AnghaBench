
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_PC_ADD_GLOBAL_DEFINE ;
 int syscall (int ,char*) ;

int trap_BotLibDefine(char *string) {
 return syscall( BOTLIB_PC_ADD_GLOBAL_DEFINE, string );
}
