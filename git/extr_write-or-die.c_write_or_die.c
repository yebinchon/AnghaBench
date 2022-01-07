
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_pipe (int ) ;
 int die_errno (char*) ;
 int errno ;
 scalar_t__ write_in_full (int,void const*,size_t) ;

void write_or_die(int fd, const void *buf, size_t count)
{
 if (write_in_full(fd, buf, count) < 0) {
  check_pipe(errno);
  die_errno("write error");
 }
}
