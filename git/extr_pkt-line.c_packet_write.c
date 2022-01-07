
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die_errno (int ) ;
 scalar_t__ packet_write_gently (int,char const*,size_t) ;

void packet_write(int fd_out, const char *buf, size_t size)
{
 if (packet_write_gently(fd_out, buf, size))
  die_errno(_("packet write failed"));
}
