
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error_errno (int ) ;
 scalar_t__ write_in_full (int,void const*,size_t) ;

__attribute__((used)) static int write_buffer(int fd, const void *buf, size_t len)
{
 if (write_in_full(fd, buf, len) < 0)
  return error_errno(_("file write error"));
 return 0;
}
