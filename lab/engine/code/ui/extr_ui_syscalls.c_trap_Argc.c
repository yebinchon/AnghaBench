
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_ARGC ;
 int syscall (int ) ;

int trap_Argc( void ) {
 return syscall( UI_ARGC );
}
