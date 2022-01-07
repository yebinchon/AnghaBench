
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;



__attribute__((used)) static void
socketpair_init(evutil_socket_t fd[2])
{
 fd[0] = -1;
 fd[1] = -1;
}
