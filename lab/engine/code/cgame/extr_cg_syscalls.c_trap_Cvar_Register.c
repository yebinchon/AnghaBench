
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmCvar_t ;


 int CG_CVAR_REGISTER ;
 int syscall (int ,int *,char const*,char const*,int) ;

void trap_Cvar_Register( vmCvar_t *vmCvar, const char *varName, const char *defaultValue, int flags ) {
 syscall( CG_CVAR_REGISTER, vmCvar, varName, defaultValue, flags );
}
