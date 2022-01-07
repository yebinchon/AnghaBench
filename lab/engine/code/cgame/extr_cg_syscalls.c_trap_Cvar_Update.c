
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmCvar_t ;


 int CG_CVAR_UPDATE ;
 int syscall (int ,int *) ;

void trap_Cvar_Update( vmCvar_t *vmCvar ) {
 syscall( CG_CVAR_UPDATE, vmCvar );
}
