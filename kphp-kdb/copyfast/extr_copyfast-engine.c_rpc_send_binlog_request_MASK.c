#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_binlog_request {long long remote_id; long long binlog_position; int /*<<< orphan*/  local_id; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  binlog_request_sent; int /*<<< orphan*/ * total_requested_num_color; } ;
struct TYPE_6__ {TYPE_1__ structured; } ;
struct TYPE_5__ {int link_color; } ;

/* Variables and functions */
 long long BINLOG_POSITION ; 
 int /*<<< orphan*/  LOG_BINLOG_REQUEST_SENT ; 
 int /*<<< orphan*/  NODE_ID ; 
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_BINLOG_REQUEST ; 
 TYPE_3__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,long long) ; 
 scalar_t__ FUNC3 (struct rpc_binlog_request*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rpc_binlog_request*,struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,long long,long long) ; 

int FUNC6 (struct connection *c, long long remote_id, long long pos) {
  FUNC5 (2, "rpc_send_binlog_request: remote_id = %lld, pos = %lld\n", remote_id, pos);
  if (!remote_id) {
    return 0;
  }
  if (pos <= 0) {
    pos = BINLOG_POSITION;
  }
  struct rpc_binlog_request *T = (struct rpc_binlog_request *)Q;
  if (FUNC3 (T, sizeof (struct rpc_binlog_request), c, RPC_TYPE_BINLOG_REQUEST) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = pos;
  int color = FUNC1 (remote_id)->link_color;
  FUNC0 (0 <= color && color <= 2);
  STATS->structured.total_requested_num_color[color] ++;
  FUNC2 (1, LOG_BINLOG_REQUEST_SENT, remote_id);
  STATS->structured.binlog_request_sent ++;
  return FUNC4 (T, c);
}