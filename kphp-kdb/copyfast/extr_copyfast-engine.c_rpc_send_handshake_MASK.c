#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_handshake {long long remote_id; int /*<<< orphan*/  port; int /*<<< orphan*/  binlog_position; int /*<<< orphan*/  local_id; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  handshake_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINLOG_POSITION ; 
 int /*<<< orphan*/  NODE_ID ; 
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_HANDSHAKE ; 
 TYPE_2__* STATS ; 
 long long FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  port ; 
 scalar_t__ FUNC1 (struct rpc_handshake*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_handshake*,struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,long long) ; 

int FUNC4 (struct connection *c) {
  long long remote_id = FUNC0 (c);
  FUNC3 (2, "rpc_send_handshake: remote_id = %lld\n", remote_id);
  if (!remote_id) {
    return 0;
  }
  struct rpc_handshake *T = (struct rpc_handshake *)Q;
  if (FUNC1 (T, sizeof (struct rpc_handshake), c, RPC_TYPE_HANDSHAKE) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = BINLOG_POSITION;
  T->port = port;
  STATS->structured.handshake_sent ++;
  return FUNC2 (T, c);
}