
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int block; scalar_t__ len; int d; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ source_port; TYPE_2__ u; int ipv6; int dest_port; } ;
typedef TYPE_3__ tftp_packet_t ;
struct TYPE_10__ {scalar_t__* tid; int last_block; scalar_t__ last_block_len; scalar_t__ block_size; int source_ipv6; } ;
typedef TYPE_4__ tftp_connection_t ;


 int SERVER ;
 int fd_out ;
 TYPE_4__* get_connection_f (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ pwrite (int ,int ,scalar_t__,long long) ;
 int recv_data_packets ;
 int tftp_disk_full ;
 int tftp_store_ack (int) ;
 int tftp_store_error (int ,char*) ;
 int tftp_undef ;
 int tftp_unknown_transfer_id ;
 int vkprintf (int,char*,int) ;
 int working_mode ;

__attribute__((used)) static int process_data (tftp_packet_t *p) {







  recv_data_packets++;
  if (working_mode == SERVER) {
    return tftp_store_error (tftp_undef, "Data packet was sent to server");
  }
  tftp_connection_t *c = get_connection_f (p->dest_port, 0);
  if (c == ((void*)0)) {
    return tftp_store_error (tftp_unknown_transfer_id, ((void*)0));
  }
  if (p->u.data.block == 1 && !c->tid[1-working_mode]) {
    c->tid[1-working_mode] = p->source_port;
  }
  if (c->tid[1-working_mode] != p->source_port) {
    return tftp_store_error (tftp_unknown_transfer_id, ((void*)0));
  }
  if (memcmp (c->source_ipv6, p->ipv6, 16)) {
    return tftp_store_error (tftp_undef, "Connection IP isn't matched.");
  }
  if (p->u.data.block == c->last_block) {
    vkprintf (3, "Receive duplicate data packet for block number %d. Resend acknowledgement packet.\n", p->u.data.block);
    return tftp_store_ack (p->u.data.block);
  }
  if (p->u.data.block != (unsigned short) (c->last_block + 1)) {

    return -1;
  }
  if (p->u.data.len > 0) {
    if (pwrite (fd_out, p->u.data.d, p->u.data.len, (long long) c->block_size * c->last_block) != p->u.data.len) {
      return tftp_store_error (tftp_disk_full, ((void*)0));
    }
  }
  c->last_block++;
  c->last_block_len = p->u.data.len;
  return tftp_store_ack (p->u.data.block);
}
