
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usercmd_t ;
typedef int qboolean ;


 int CG_GETUSERCMD ;
 int syscall (int ,int,int *) ;

qboolean trap_GetUserCmd( int cmdNumber, usercmd_t *ucmd ) {
 return syscall( CG_GETUSERCMD, cmdNumber, ucmd );
}
