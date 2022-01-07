
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CATCH_EINTR (int) ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int errno ;
 int fcntl (int,int ,int ) ;

int os_set_exec_close(int fd)
{
 int err;

 CATCH_EINTR(err = fcntl(fd, F_SETFD, FD_CLOEXEC));

 if (err < 0)
  return -errno;
 return err;
}
