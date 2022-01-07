
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EIO ;
 int errno ;
 int write (int,char const*,int) ;

int generic_write(int fd, const char *buf, int n, void *unused)
{
 int err;

 err = write(fd, buf, n);
 if (err > 0)
  return err;
 else if (errno == EAGAIN)
  return 0;
 else if (err == 0)
  return -EIO;
 return -errno;
}
