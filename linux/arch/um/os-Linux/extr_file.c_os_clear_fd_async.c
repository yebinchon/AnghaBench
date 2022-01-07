
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_ASYNC ;
 int O_NONBLOCK ;
 int errno ;
 scalar_t__ fcntl (int,int ,...) ;

int os_clear_fd_async(int fd)
{
 int flags;

 flags = fcntl(fd, F_GETFL);
 if (flags < 0)
  return -errno;

 flags &= ~(O_ASYNC | O_NONBLOCK);
 if (fcntl(fd, F_SETFL, flags) < 0)
  return -errno;
 return 0;
}
