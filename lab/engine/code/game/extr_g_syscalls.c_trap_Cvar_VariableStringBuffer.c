
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_CVAR_VARIABLE_STRING_BUFFER ;
 int syscall (int ,char const*,char*,int) ;

void trap_Cvar_VariableStringBuffer( const char *var_name, char *buffer, int bufsize ) {
 syscall( G_CVAR_VARIABLE_STRING_BUFFER, var_name, buffer, bufsize );
}
