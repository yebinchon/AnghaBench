
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_GETCURRENTCMDNUMBER ;
 int syscall (int ) ;

int trap_GetCurrentCmdNumber( void ) {
 return syscall( CG_GETCURRENTCMDNUMBER );
}
