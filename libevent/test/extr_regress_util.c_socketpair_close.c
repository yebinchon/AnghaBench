
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int evutil_closesocket (int) ;

__attribute__((used)) static void
socketpair_close(evutil_socket_t fd[2])
{
 if (fd[0] != -1)
  evutil_closesocket(fd[0]);
 if (fd[1] != -1)
  evutil_closesocket(fd[1]);
}
