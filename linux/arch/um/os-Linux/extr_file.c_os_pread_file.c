
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int pread (int,void*,int,unsigned long long) ;

int os_pread_file(int fd, void *buf, int len, unsigned long long offset)
{
 int n = pread(fd, buf, len, offset);

 if (n < 0)
  return -errno;
 return n;
}
