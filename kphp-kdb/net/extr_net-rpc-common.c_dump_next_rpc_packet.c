
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int dump_next_rpc_packet_limit (struct connection*,int) ;

void dump_next_rpc_packet (struct connection *c) {
  dump_next_rpc_packet_limit (c, 1 << 29);
}
