
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fsync (int) ;

int os_sync_file(int fd)
{
 int n = fsync(fd);

 if (n < 0)
  return -errno;
 return n;
}
