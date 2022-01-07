
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int ENOSPC ;
 int errno ;
 scalar_t__ xwrite (int,char const*,size_t) ;

ssize_t write_in_full(int fd, const void *buf, size_t count)
{
 const char *p = buf;
 ssize_t total = 0;

 while (count > 0) {
  ssize_t written = xwrite(fd, p, count);
  if (written < 0)
   return -1;
  if (!written) {
   errno = ENOSPC;
   return -1;
  }
  count -= written;
  p += written;
  total += written;
 }

 return total;
}
