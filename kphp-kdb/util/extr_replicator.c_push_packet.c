
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int Out; } ;
struct TYPE_2__ {int out_packet_num; } ;


 unsigned int MAX_PACKET_PAYLOAD ;
 TYPE_1__* RPCC_DATA (struct connection*) ;
 int assert (int) ;
 int compute_crc32 (int*,int) ;
 int flush_later (struct connection*) ;
 int memset (char*,int ,int) ;
 int* send_packet ;
 int write_out (int *,int*,int) ;

void push_packet (struct connection *c, int packet_bytes) {
  assert ((unsigned) packet_bytes <= MAX_PACKET_PAYLOAD);
  int pad_bytes = -packet_bytes & 3;
  char *ptr = (char *) send_packet + 8 + packet_bytes;
  memset (ptr, 0, pad_bytes);
  int plen = (packet_bytes + 12 + 3) >> 2;
  send_packet[0] = plen * 4;
  send_packet[1] = RPCC_DATA(c)->out_packet_num++;
  send_packet[plen - 1] = compute_crc32 (send_packet, plen * 4 - 4);
  assert (write_out (&c->Out, send_packet, plen * 4) == plen * 4);
  flush_later (c);

}
