
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

int uv__tcp_nodelay(int fd, int on) {
  if (setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on)))
    return UV__ERR(errno);
  return 0;
}
