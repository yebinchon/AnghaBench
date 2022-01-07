
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_GETPINGQUEUECOUNT ;
 int syscall (int ) ;

int trap_LAN_GetPingQueueCount( void ) {
 return syscall( UI_LAN_GETPINGQUEUECOUNT );
}
