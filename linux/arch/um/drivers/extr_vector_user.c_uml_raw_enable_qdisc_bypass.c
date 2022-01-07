
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optval ;


 int PACKET_QDISC_BYPASS ;
 int SOL_PACKET ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;

bool uml_raw_enable_qdisc_bypass(int fd)
{
 int optval = 1;

 if (setsockopt(fd,
  SOL_PACKET, PACKET_QDISC_BYPASS,
  &optval, sizeof(optval)) != 0) {
  return 0;
 }
 return 1;
}
