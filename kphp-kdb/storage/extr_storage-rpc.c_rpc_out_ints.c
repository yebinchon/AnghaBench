
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PACKET_BUFFER_SIZE ;
 int assert (int) ;
 int memcpy (scalar_t__,int*,int) ;
 scalar_t__ packet_buffer ;
 scalar_t__ packet_ptr ;

void rpc_out_ints (int *what, int len) {
  assert (packet_ptr + len <= packet_buffer + PACKET_BUFFER_SIZE);
  memcpy (packet_ptr, what, len * 4);
  packet_ptr += len;
}
