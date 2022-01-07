
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_SERVERISVISIBLE ;
 int syscall (int ,int,int) ;

int trap_LAN_ServerIsVisible( int source, int n) {
 return syscall( UI_LAN_SERVERISVISIBLE, source, n );
}
