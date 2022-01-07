
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PACKET_BUFFER_SIZE ;
 int assert (int) ;
 scalar_t__ packet_buffer ;
 scalar_t__ packet_ptr ;
 int vkprintf (int,char*,long long) ;

void rpc_out_long (long long x) {
  vkprintf (4, "rpc_out_long (%lld)\n", x);
  assert (packet_ptr + 2 <= packet_buffer + PACKET_BUFFER_SIZE);
  *(long long *)packet_ptr = x;
  packet_ptr += 2;
}
