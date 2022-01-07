
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_UPDATESCREEN ;
 int syscall (int ) ;

void trap_UpdateScreen( void ) {
 syscall( CG_UPDATESCREEN );
}
