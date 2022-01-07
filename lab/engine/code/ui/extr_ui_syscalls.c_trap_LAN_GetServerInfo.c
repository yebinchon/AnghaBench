
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_GETSERVERINFO ;
 int syscall (int ,int,int,char*,int) ;

void trap_LAN_GetServerInfo( int source, int n, char *buf, int buflen ) {
 syscall( UI_LAN_GETSERVERINFO, source, n, buf, buflen );
}
