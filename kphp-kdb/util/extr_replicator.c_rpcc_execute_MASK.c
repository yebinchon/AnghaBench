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
struct repl_rotate {int dummy; } ;
struct repl_pos_info {int dummy; } ;
struct repl_handshake_ok {int dummy; } ;
struct repl_error {int dummy; } ;
struct repl_data {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  In; int /*<<< orphan*/  last_response_time; } ;

/* Variables and functions */
 int MAX_PACKET_INTS ; 
 int P_REPL_DATA ; 
#define  P_REPL_ERROR 131 
#define  P_REPL_HANDSHAKE_OK 130 
#define  P_REPL_POS_INFO 129 
#define  P_REPL_ROTATE 128 
 int RPC_PONG ; 
 int SKIP_ALL_BYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,struct repl_error*,int) ; 
 int FUNC5 (struct connection*,struct repl_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,struct repl_handshake_ok*) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,struct repl_pos_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,struct repl_rotate*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ recv_packet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  unknown_packets_received ; 
 int verbosity ; 

int FUNC10 (struct connection *c, int op, int len) {
  c->last_response_time = precise_now;
  if (op == RPC_PONG) { return SKIP_ALL_BYTES; }
  if (verbosity > 0) {
    FUNC3 (stderr, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  if (verbosity > 1) {
    FUNC2 (c, 64);
  }

  if (op == P_REPL_DATA && len >= 12 + sizeof (struct repl_data)) {
    FUNC1 (FUNC9 (&c->In, &recv_packet, 8 + sizeof (struct repl_data)) == 8 + sizeof (struct repl_data));
    int res = FUNC5 (c, (struct repl_data *) (recv_packet + 2), len - 8 - sizeof (struct repl_data));
    if (res < 0) {
      FUNC1 (FUNC0 (&c->In, len - 8 - sizeof (struct repl_data)) == len - 8 - sizeof (struct repl_data));
    }

    return 0;
  }

  if (len > MAX_PACKET_INTS * 4) {
    FUNC3 (stderr, "rpcc_execute: received too long packet from connection %d : type=%08x len=%d\n", c->fd, op, len);
    unknown_packets_received++;
    return SKIP_ALL_BYTES;
  }

  FUNC1 (FUNC9 (&c->In, &recv_packet, len) == len);

  switch (op) {
  case P_REPL_HANDSHAKE_OK:
    if (len == 12 + sizeof (struct repl_handshake_ok)) {
      FUNC6 (c, (struct repl_handshake_ok *) (recv_packet + 2));
      return 0;
    }
    break;
  case P_REPL_ERROR:
    if (len >= 16 + sizeof (struct repl_error)) {
      FUNC4 (c, (struct repl_error *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case P_REPL_ROTATE:
    if (len >= 12 + sizeof (struct repl_rotate)) {
      FUNC8 (c, (struct repl_rotate *) (recv_packet + 2), len - 12);
      return 0;
    }
    break;
  case P_REPL_POS_INFO:
    if (len == 12 + sizeof (struct repl_pos_info)) {
      FUNC7 (c, (struct repl_pos_info *) (recv_packet + 2));
      return 0;
    }
    break;
  }
  unknown_packets_received++;
  return 0;
}