
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int errno ;
 int fallocate (int,int,unsigned long long,int) ;

int os_falloc_punch(int fd, unsigned long long offset, int len)
{
 int n = fallocate(fd, FALLOC_FL_PUNCH_HOLE|FALLOC_FL_KEEP_SIZE, offset, len);

 if (n < 0)
  return -errno;
 return n;
}
