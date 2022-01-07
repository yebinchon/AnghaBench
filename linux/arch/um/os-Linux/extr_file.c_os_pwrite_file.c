
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int pwrite (int,void*,int,unsigned long long) ;

int os_pwrite_file(int fd, const void *buf, int len, unsigned long long offset)
{
 int n = pwrite(fd, (void *) buf, len, offset);

 if (n < 0)
  return -errno;
 return n;
}
