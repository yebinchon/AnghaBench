
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int packet_end ;
 int packet_ptr ;

int rpc_end_of_fetch (void) {
  return packet_ptr == packet_end - 1;
}
