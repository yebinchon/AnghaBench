
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_rotate {int dummy; } ;
struct repl_pos_info {int dummy; } ;
struct repl_handshake_ok {int dummy; } ;
struct repl_error {int dummy; } ;
struct repl_data {int dummy; } ;
struct connection {int fd; int In; int last_response_time; } ;


 int MAX_PACKET_INTS ;
 int P_REPL_DATA ;




 int RPC_PONG ;
 int SKIP_ALL_BYTES ;
 int advance_skip_read_ptr (int *,int) ;
 int assert (int) ;
 int dump_next_rpc_packet_limit (struct connection*,int) ;
 int fprintf (int ,char*,int,int,int) ;
 int precise_now ;
 int process_client_error_packet (struct connection*,struct repl_error*,int) ;
 int process_data_packet (struct connection*,struct repl_data*,int) ;
 int process_handshake_ok_packet (struct connection*,struct repl_handshake_ok*) ;
 int process_pos_info_packet (struct connection*,struct repl_pos_info*) ;
 int process_rotate_packet (struct connection*,struct repl_rotate*,int) ;
 int read_in (int *,scalar_t__*,int) ;
 scalar_t__ recv_packet ;
 int stderr ;
 int unknown_packets_received ;
 int verbosity ;

int rpcc_execute (struct connection *c, int op, int len) {
  c->last_response_time = precise_now;
  if (op == RPC_PONG) { return SKIP_ALL_BYTES; }
  if (verbosity > 0) {
    fprintf (stderr, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  if (verbosity > 1) {
    dump_next_rpc_packet_limit (c, 64);
  }

  if (op == P_REPL_DATA && len >= 12 + sizeof (struct repl_data)) {
    assert (read_in (&c->In, &recv_packet, 8 + sizeof (struct repl_data)) == 8 + sizeof (struct repl_data));
    int res = process_data_packet (c, (struct repl_data *) (recv_packet + 2), len - 8 - sizeof (struct repl_data));
    if (res < 0) {
      assert (advance_skip_read_ptr (&c->In, len - 8 - sizeof (struct repl_data)) == len - 8 - sizeof (struct repl_data));
    }

    return 0;
  }

  if (len > MAX_PACKET_INTS * 4) {
    fprintf (stderr, "rpcc_execute: received too long packet from connection %d : type=%08x len=%d\n", c->fd, op, len);
    unknown_packets_received++;
    return SKIP_ALL_BYTES;
  }

  assert (read_in (&c->In, &recv_packet, len) == len);

  switch (op) {
  case 130:
    if (len == 12 + sizeof (struct repl_handshake_ok)) {
      process_handshake_ok_packet (c, (struct repl_handshake_ok *) (recv_packet + 2));
      return 0;
    }
    break;
  case 131:
    if (len >= 16 + sizeof (struct repl_error)) {
      process_client_error_packet (c, (struct repl_error *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case 128:
    if (len >= 12 + sizeof (struct repl_rotate)) {
      process_rotate_packet (c, (struct repl_rotate *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case 129:
    if (len == 12 + sizeof (struct repl_pos_info)) {
      process_pos_info_packet (c, (struct repl_pos_info *) (recv_packet + 2));
      return 0;
    }
    break;
  }
  unknown_packets_received++;
  return 0;
}
