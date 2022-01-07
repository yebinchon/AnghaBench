
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_ushort (int ) ;
 int msg_out ;

int tftp_get_response_packet_type (void) {
  return get_ushort (msg_out);
}
