
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_LIBVAR_GET ;
 int syscall (int ,char*,char*,int) ;

int trap_BotLibVarGet(char *var_name, char *value, int size) {
 return syscall( BOTLIB_LIBVAR_GET, var_name, value, size );
}
