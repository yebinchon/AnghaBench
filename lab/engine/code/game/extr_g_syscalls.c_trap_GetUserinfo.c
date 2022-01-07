
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_GET_USERINFO ;
 int syscall (int ,int,char*,int) ;

void trap_GetUserinfo( int num, char *buffer, int bufferSize ) {
 syscall( G_GET_USERINFO, num, buffer, bufferSize );
}
