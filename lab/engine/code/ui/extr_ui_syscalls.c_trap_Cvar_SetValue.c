
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PASSFLOAT (float) ;
 int UI_CVAR_SETVALUE ;
 int syscall (int ,char const*,int ) ;

void trap_Cvar_SetValue( const char *var_name, float value ) {
 syscall( UI_CVAR_SETVALUE, var_name, PASSFLOAT( value ) );
}
