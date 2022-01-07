
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_GET_SERVERINFO ;
 int syscall (int ,char*,int) ;

void trap_GetServerinfo( char *buffer, int bufferSize ) {
 syscall( G_GET_SERVERINFO, buffer, bufferSize );
}
