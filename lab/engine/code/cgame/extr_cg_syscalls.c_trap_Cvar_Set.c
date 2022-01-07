
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_CVAR_SET ;
 int syscall (int ,char const*,char const*) ;

void trap_Cvar_Set( const char *var_name, const char *value ) {
 syscall( CG_CVAR_SET, var_name, value );
}
