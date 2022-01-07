
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_LAN_MARKSERVERVISIBLE ;
 int syscall (int ,int,int,int ) ;

void trap_LAN_MarkServerVisible( int source, int n, qboolean visible ) {
 syscall( UI_LAN_MARKSERVERVISIBLE, source, n, visible );
}
