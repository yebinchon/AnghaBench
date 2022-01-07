
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;
typedef int evutil_socket_t ;
typedef int ev_socklen_t ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int setsockopt (int ,int ,int ,void*,int ) ;

int
evutil_make_listen_socket_reuseable(evutil_socket_t sock)
{
 return 0;

}
