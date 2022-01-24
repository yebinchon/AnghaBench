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
struct rpcs_op {int remote_id; } ;
struct rpc_handshake_reject {int dummy; } ;
struct rpc_handshake_accept {int dummy; } ;
struct rpc_handshake {int dummy; } ;
struct rpc_binlog_request {int dummy; } ;
struct rpc_binlog_info {int dummy; } ;
struct rpc_binlog_data {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int CLUSTER_MASK ; 
 int MAX_PACKET_LEN ; 
 int NODE_ID ; 
 scalar_t__ P ; 
#define  RPC_TYPE_BINLOG_DATA 133 
#define  RPC_TYPE_BINLOG_INFO 132 
#define  RPC_TYPE_BINLOG_REQUEST 131 
#define  RPC_TYPE_HANDSHAKE 130 
#define  RPC_TYPE_HANDSHAKE_ACCEPT 129 
#define  RPC_TYPE_HANDSHAKE_REJECT 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct connection*,struct rpc_binlog_data*,int) ; 
 int FUNC6 (struct connection*,struct rpc_binlog_info*,int) ; 
 int FUNC7 (struct connection*,struct rpc_binlog_request*,int) ; 
 int FUNC8 (struct connection*,struct rpc_handshake*,int) ; 
 int FUNC9 (struct connection*,struct rpc_handshake_accept*,int) ; 
 int FUNC10 (struct connection*,struct rpc_handshake_reject*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC11 (struct connection *c, int op, int len) {
  if (verbosity > 1) {
    FUNC2 (stderr, "rpcs_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;    
  }

  FUNC0 (FUNC3 (&c->In, &P, len) == len);
  FUNC0 (FUNC4 (P));

  if (FUNC1 (((struct rpcs_op *)P)->remote_id) < 0 || (((struct rpcs_op *)P)->remote_id & CLUSTER_MASK) != (NODE_ID & CLUSTER_MASK)) {
    return 0;
  }

  switch (op) {
  case RPC_TYPE_HANDSHAKE:
    return FUNC8 (c, (struct rpc_handshake *)P, len);
  case RPC_TYPE_HANDSHAKE_ACCEPT:
    return FUNC9 (c, (struct rpc_handshake_accept *)P, len);
  case RPC_TYPE_HANDSHAKE_REJECT:
    return FUNC10 (c, (struct rpc_handshake_reject *)P, len);
  case RPC_TYPE_BINLOG_INFO:
    return FUNC6 (c, (struct rpc_binlog_info *)P, len);
  case RPC_TYPE_BINLOG_REQUEST:
    return FUNC7 (c, (struct rpc_binlog_request *)P, len);
  case RPC_TYPE_BINLOG_DATA:
    return FUNC5 (c, (struct rpc_binlog_data *)P, len);
  //case RPC_TYPE_DIVORCE:
  //  return rpc_execute_divorce (c, (struct rpc_divorce *)P, len);
  }

  return 0;
}