
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static inline void set_cloexec(int fd)
{
 int flags = fcntl(fd, F_GETFD);
 if (flags >= 0)
  fcntl(fd, F_SETFD, flags | FD_CLOEXEC);
}
