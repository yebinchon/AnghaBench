
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_R_CLEARSCENE ;
 int syscall (int ) ;

void trap_R_ClearScene( void ) {
 syscall( UI_R_CLEARSCENE );
}
