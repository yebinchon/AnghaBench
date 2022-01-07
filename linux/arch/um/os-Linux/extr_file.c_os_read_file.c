
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int read (int,void*,int) ;

int os_read_file(int fd, void *buf, int len)
{
 int n = read(fd, buf, len);

 if (n < 0)
  return -errno;
 return n;
}
