
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int event_warn (char*,int ) ;
 int fcntl (int ,int ,int ) ;

__attribute__((used)) static int
evutil_fast_socket_closeonexec(evutil_socket_t fd)
{






 return 0;
}
