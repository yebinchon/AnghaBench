
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 scalar_t__ fsync (int) ;

int os_fsync_file(int fd)
{
 if (fsync(fd) < 0)
     return -errno;
 return 0;
}
