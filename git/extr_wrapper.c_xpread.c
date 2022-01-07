
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 size_t MAX_IO_SIZE ;
 scalar_t__ errno ;
 scalar_t__ pread (int,void*,size_t,int ) ;

ssize_t xpread(int fd, void *buf, size_t len, off_t offset)
{
 ssize_t nr;
 if (len > MAX_IO_SIZE)
  len = MAX_IO_SIZE;
 while (1) {
  nr = pread(fd, buf, len, offset);
  if ((nr < 0) && (errno == EAGAIN || errno == EINTR))
   continue;
  return nr;
 }
}
