
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 size_t MAX_IO_SIZE ;
 int POLLIN ;
 scalar_t__ errno ;
 scalar_t__ handle_nonblock (int,int ,scalar_t__) ;
 scalar_t__ read (int,void*,size_t) ;

ssize_t xread(int fd, void *buf, size_t len)
{
 ssize_t nr;
 if (len > MAX_IO_SIZE)
     len = MAX_IO_SIZE;
 while (1) {
  nr = read(fd, buf, len);
  if (nr < 0) {
   if (errno == EINTR)
    continue;
   if (handle_nonblock(fd, POLLIN, errno))
    continue;
  }
  return nr;
 }
}
