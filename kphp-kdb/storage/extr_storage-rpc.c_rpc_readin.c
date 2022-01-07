
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int assert (int) ;
 void* packet_buffer ;
 void* packet_end ;
 void* packet_ptr ;
 int read_in (int *,void*,int) ;

void rpc_readin (struct connection *c, int len) {
  assert (read_in (&c->In, packet_buffer, len) == len);
  packet_ptr = packet_buffer;
  packet_end = packet_buffer + (len >> 2);
}
