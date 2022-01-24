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
struct rpc_update_stats {int dummy; } ;
struct rpc_stats {int dummy; } ;
struct rpc_join_old {int dummy; } ;
struct rpc_join {int dummy; } ;
struct rpc_children_request {int dummy; } ;
struct connection {int fd; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int MAX_PACKET_LEN ; 
 scalar_t__ P ; 
#define  RPC_TYPE_CHILDREN_REQUEST 132 
#define  RPC_TYPE_JOIN 131 
#define  RPC_TYPE_JOIN_OLD 130 
#define  RPC_TYPE_STATS 129 
#define  RPC_TYPE_UPDATE_STATS 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct connection*,struct rpc_children_request*,int) ; 
 int FUNC5 (struct connection*,struct rpc_join*,int) ; 
 int FUNC6 (struct connection*,struct rpc_join_old*,int) ; 
 int FUNC7 (struct connection*,struct rpc_stats*,int) ; 
 int FUNC8 (struct connection*,struct rpc_update_stats*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC9 (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    FUNC1 (stderr, "rpcs_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;    
  }

  FUNC0 (FUNC2 (&c->In, &P, len) == len);
  FUNC0 (FUNC3 (P));


  switch (op) {
  case RPC_TYPE_JOIN:
    return FUNC5 (c, (struct rpc_join *)P, len);
    break;

  case RPC_TYPE_JOIN_OLD:
    return FUNC6 (c, (struct rpc_join_old *)P, len);
    break;

  case RPC_TYPE_CHILDREN_REQUEST:
    return FUNC4 (c, (struct rpc_children_request *)P, len);
    break;

  case RPC_TYPE_STATS:
    return FUNC7 (c, (struct rpc_stats *)P, len);
    break;

  case RPC_TYPE_UPDATE_STATS:
    return FUNC8 (c, (struct rpc_update_stats *)P, len);
    break;
  }
  return 0;
}