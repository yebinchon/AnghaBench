
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ xread (int,char*,size_t) ;

ssize_t read_in_full(int fd, void *buf, size_t count)
{
 char *p = buf;
 ssize_t total = 0;

 while (count > 0) {
  ssize_t loaded = xread(fd, p, count);
  if (loaded < 0)
   return -1;
  if (loaded == 0)
   return total;
  count -= loaded;
  p += loaded;
  total += loaded;
 }

 return total;
}
