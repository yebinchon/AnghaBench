
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int evutil_win_socketpair (int,int,int,int *) ;
 int socketpair (int,int,int,int *) ;

int
evutil_socketpair(int family, int type, int protocol, evutil_socket_t fd[2])
{

 return socketpair(family, type, protocol, fd);



}
