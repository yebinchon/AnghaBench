
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_handshake {int dummy; } ;
struct repl_error {int dummy; } ;
struct repl_data_ack {int dummy; } ;
struct connection {int fd; int In; } ;


 int MAX_PACKET_INTS ;



 int SKIP_ALL_BYTES ;
 int assert (int) ;
 int dump_next_rpc_packet_limit (struct connection*,int) ;
 int fprintf (int ,char*,int,int,int) ;
 int process_data_ack_packet (struct connection*,struct repl_data_ack*) ;
 int process_handshake_packet (struct connection*,struct repl_handshake*,int) ;
 int process_server_error_packet (struct connection*,struct repl_error*,int) ;
 int read_in (int *,int *,int) ;
 int recv_packet ;
 int stderr ;
 int unknown_packets_received ;
 int verbosity ;

int rpcs_execute (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    fprintf (stderr, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  if (verbosity > 1) {
    dump_next_rpc_packet_limit (c, 64);
  }

  if (len > MAX_PACKET_INTS * 4) {
    fprintf (stderr, "rpcs_execute: received too long packet from connection %d : type=%08x len=%d\n", c->fd, op, len);
    unknown_packets_received++;
    return SKIP_ALL_BYTES;
  }

  assert (read_in (&c->In, &recv_packet, len) == len);

  switch (op) {
  case 128:
    if (len >= 12 + sizeof (struct repl_handshake)) {
      process_handshake_packet (c, (struct repl_handshake *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case 129:
    if (len >= 16 + sizeof (struct repl_error)) {
      process_server_error_packet (c, (struct repl_error *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case 130:
    if (len == 12 + sizeof (struct repl_data_ack)) {
      process_data_ack_packet (c, (struct repl_data_ack *) (recv_packet + 2));
      return 0;
    }
    break;
  }

  unknown_packets_received++;
  return 0;
}
