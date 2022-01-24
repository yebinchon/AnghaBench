#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct repl_handshake {int dummy; } ;
struct repl_error {int dummy; } ;
struct repl_data_ack {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int MAX_PACKET_INTS ; 
#define  P_REPL_DATA_ACK 130 
#define  P_REPL_ERROR 129 
#define  P_REPL_HANDSHAKE 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,struct repl_data_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,struct repl_handshake*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,struct repl_error*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  recv_packet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  unknown_packets_received ; 
 int verbosity ; 

int FUNC7 (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    FUNC2 (stderr, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  if (verbosity > 1) {
    FUNC1 (c, 64);
  }

  if (len > MAX_PACKET_INTS * 4) {
    FUNC2 (stderr, "rpcs_execute: received too long packet from connection %d : type=%08x len=%d\n", c->fd, op, len);
    unknown_packets_received++;
    return SKIP_ALL_BYTES;
  }

  FUNC0 (FUNC6 (&c->In, &recv_packet, len) == len);

  switch (op) {
  case P_REPL_HANDSHAKE:
    if (len >= 12 + sizeof (struct repl_handshake)) {
      FUNC4 (c, (struct repl_handshake *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case P_REPL_ERROR:
    if (len >= 16 + sizeof (struct repl_error)) {
      FUNC5 (c, (struct repl_error *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case P_REPL_DATA_ACK:
    if (len == 12 + sizeof (struct repl_data_ack)) {
      FUNC3 (c, (struct repl_data_ack *) (recv_packet + 2));
      return 0;
    }
    break;
  }

  unknown_packets_received++;
  return 0;
}