
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_LAN_COMPARESERVERS ;
 int syscall (int ,int,int,int,int,int) ;

int trap_LAN_CompareServers( int source, int sortKey, int sortDir, int s1, int s2 ) {
 return syscall( UI_LAN_COMPARESERVERS, source, sortKey, sortDir, s1, s2 );
}
