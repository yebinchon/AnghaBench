
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ) ;
 int packet_trace (char*,int,int) ;
 scalar_t__ write_in_full (int,char*,int) ;

int packet_flush_gently(int fd)
{
 packet_trace("0000", 4, 1);
 if (write_in_full(fd, "0000", 4) < 0)
  return error(_("flush packet write failed"));
 return 0;
}
