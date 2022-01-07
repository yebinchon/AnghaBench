
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_GETCONFIGSTRING ;
 int syscall (int ,int,char*,int) ;

int trap_GetConfigString( int index, char* buff, int buffsize ) {
 return syscall( UI_GETCONFIGSTRING, index, buff, buffsize );
}
