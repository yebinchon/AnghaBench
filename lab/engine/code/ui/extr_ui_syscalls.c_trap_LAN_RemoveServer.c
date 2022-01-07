
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_REMOVESERVER ;
 int syscall (int ,int,char const*) ;

void trap_LAN_RemoveServer(int source, const char *addr) {
 syscall( UI_LAN_REMOVESERVER, source, addr );
}
