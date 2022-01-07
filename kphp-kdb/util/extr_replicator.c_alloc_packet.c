
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_PACKET_PAYLOAD ;
 int assert (int) ;
 void* send_packet ;

void *alloc_packet (int packet_bytes) {
  assert ((unsigned) packet_bytes <= MAX_PACKET_PAYLOAD);
  return send_packet + 2;
}
