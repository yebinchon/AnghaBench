
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_block; int last_block_len; } ;
typedef TYPE_1__ tftp_connection_t ;


 int* msg_out ;
 int tftp_block_read (TYPE_1__*,int,int*) ;
 int tftp_data ;
 int tftp_store_error (int ,char*) ;
 int tftp_undef ;

__attribute__((used)) static int tftp_sent_data_packet (tftp_connection_t *c, int block) {

  int r = tftp_block_read (c, block, msg_out + 4);
  if (r < 0) {
    return tftp_store_error (tftp_undef, "IO error: Read failed");
  }
  msg_out[0] = (tftp_data >> 8) & 0xff;
  msg_out[1] = tftp_data & 0xff;
  msg_out[2] = (block >> 8) & 0xff;
  msg_out[3] = block & 0xff;
  c->last_block = block;
  c->last_block_len = r;
  return r + 4;
}
