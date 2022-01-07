
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_SAVECACHEDSERVERS ;
 int syscall (int ) ;

void trap_LAN_SaveCachedServers( void ) {
 syscall( UI_LAN_SAVECACHEDSERVERS );
}
