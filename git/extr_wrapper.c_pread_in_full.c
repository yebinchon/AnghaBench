
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;


 scalar_t__ xpread (int,char*,size_t,int ) ;

ssize_t pread_in_full(int fd, void *buf, size_t count, off_t offset)
{
 char *p = buf;
 ssize_t total = 0;

 while (count > 0) {
  ssize_t loaded = xpread(fd, p, count, offset);
  if (loaded < 0)
   return -1;
  if (loaded == 0)
   return total;
  count -= loaded;
  p += loaded;
  total += loaded;
  offset += loaded;
 }

 return total;
}
