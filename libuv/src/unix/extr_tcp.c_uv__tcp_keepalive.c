
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;
typedef int delay ;


 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_KEEPALIVE ;
 int TCP_KEEPIDLE ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ setsockopt (int,int ,int ,...) ;

int uv__tcp_keepalive(int fd, int on, unsigned int delay) {
  if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, &on, sizeof(on)))
    return UV__ERR(errno);
  return 0;
}
