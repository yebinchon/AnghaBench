
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ file; scalar_t__ oack_size; int timeout; int block_size; } ;
typedef TYPE_2__ tftp_connection_t ;


 char* msg_out ;
 char* store_options (char*,int ,int ,int) ;
 int tftp_oack ;

__attribute__((used)) static int tftp_sent_oack_packet (tftp_connection_t *c) {
  msg_out[0] = (tftp_oack >> 8) & 0xff;
  msg_out[1] = tftp_oack & 0xff;
  char *wptr = msg_out + 2;
  wptr = store_options (msg_out + 2, c->block_size, c->timeout, c->oack_size ? c->file.size : -1);
  return wptr - msg_out;
}
