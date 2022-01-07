
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_KEY_CLEARSTATES ;
 int syscall (int ) ;

void trap_Key_ClearStates( void ) {
 syscall( UI_KEY_CLEARSTATES );
}
