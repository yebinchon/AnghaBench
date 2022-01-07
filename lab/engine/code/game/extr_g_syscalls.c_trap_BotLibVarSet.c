
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_LIBVAR_SET ;
 int syscall (int ,char*,char*) ;

int trap_BotLibVarSet(char *var_name, char *value) {
 return syscall( BOTLIB_LIBVAR_SET, var_name, value );
}
