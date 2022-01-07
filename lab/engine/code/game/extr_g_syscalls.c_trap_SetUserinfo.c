
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_SET_USERINFO ;
 int syscall (int ,int,char const*) ;

void trap_SetUserinfo( int num, const char *buffer ) {
 syscall( G_SET_USERINFO, num, buffer );
}
