
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int ioctl (int,unsigned int,unsigned long) ;

int os_ioctl_generic(int fd, unsigned int cmd, unsigned long arg)
{
 int err;

 err = ioctl(fd, cmd, arg);
 if (err < 0)
  return -errno;

 return err;
}
