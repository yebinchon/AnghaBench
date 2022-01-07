
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ packet_buffer ;
 scalar_t__ packet_ptr ;

void rpc_clear_packet (int reserve_space_for_op) {
  packet_ptr = packet_buffer + 2;
  if (reserve_space_for_op) {
    packet_ptr++;
  }
}
