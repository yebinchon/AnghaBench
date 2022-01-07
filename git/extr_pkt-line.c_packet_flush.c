
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die_errno (int ) ;
 int packet_trace (char*,int,int) ;
 scalar_t__ write_in_full (int,char*,int) ;

void packet_flush(int fd)
{
 packet_trace("0000", 4, 1);
 if (write_in_full(fd, "0000", 4) < 0)
  die_errno(_("unable to write flush packet"));
}
