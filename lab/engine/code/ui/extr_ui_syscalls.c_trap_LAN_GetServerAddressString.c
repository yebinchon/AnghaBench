
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_GETSERVERADDRESSSTRING ;
 int syscall (int ,int,int,char*,int) ;

void trap_LAN_GetServerAddressString( int source, int n, char *buf, int buflen ) {
 syscall( UI_LAN_GETSERVERADDRESSSTRING, source, n, buf, buflen );
}
