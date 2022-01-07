
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_CVAR_RESET ;
 int syscall (int ,char const*) ;

void trap_Cvar_Reset( const char *name ) {
 syscall( UI_CVAR_RESET, name );
}
