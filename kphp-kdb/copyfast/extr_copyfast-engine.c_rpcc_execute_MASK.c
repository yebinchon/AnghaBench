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
struct rpcc_op {int /*<<< orphan*/  id; } ;
struct rpc_request_update_stats {int dummy; } ;
struct rpc_kicked {int dummy; } ;
struct rpc_join_ack {int dummy; } ;
struct rpc_delays {int dummy; } ;
struct rpc_children_answer {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int MAX_PACKET_LEN ; 
 scalar_t__ P ; 
#define  RPC_TYPE_CHILDREN_ANSWER 132 
#define  RPC_TYPE_DELAYS 131 
#define  RPC_TYPE_JOIN_ACK 130 
#define  RPC_TYPE_KICKED 129 
#define  RPC_TYPE_REQUEST_UPDATE_STATS 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct connection*,struct rpc_children_answer*,int) ; 
 int FUNC7 (struct connection*,struct rpc_delays*,int) ; 
 int FUNC8 (struct connection*,struct rpc_join_ack*,int) ; 
 int FUNC9 (struct connection*,struct rpc_kicked*,int) ; 
 int FUNC10 (struct connection*,struct rpc_request_update_stats*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 

int FUNC12 (struct connection *c, int op, int len) {
  if (verbosity > 1) {
    FUNC3 (stderr, "rpcc_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;    
  }

  FUNC0 (FUNC4 (&c->In, &P, len) == len);
  FUNC0 (FUNC5 (P));
  

  if ((op != RPC_TYPE_JOIN_ACK || FUNC2 (((struct rpcc_op *)P)->id) < 0) && FUNC1 (((struct rpcc_op *)P)->id) < 0) {
    return 0;
  }

  FUNC11 (6, "%x\n", op);

  switch (op) {
  case RPC_TYPE_JOIN_ACK:
    return FUNC8 (c, (struct rpc_join_ack *)P, len);
  case RPC_TYPE_CHILDREN_ANSWER:
    return FUNC6 (c, (struct rpc_children_answer *)P, len);
  case RPC_TYPE_KICKED:
    return FUNC9 (c, (struct rpc_kicked *)P, len);
  case RPC_TYPE_REQUEST_UPDATE_STATS:
    return FUNC10 (c, (struct rpc_request_update_stats *)P, len);
  case RPC_TYPE_DELAYS:
    return FUNC7 (c, (struct rpc_delays *)P, len);
  }
  return 0;
}