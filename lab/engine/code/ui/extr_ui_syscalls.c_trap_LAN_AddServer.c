
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_ADDSERVER ;
 int syscall (int ,int,char const*,char const*) ;

int trap_LAN_AddServer(int source, const char *name, const char *addr) {
 return syscall( UI_LAN_ADDSERVER, source, name, addr );
}
