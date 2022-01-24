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
struct rpc_handshake {int /*<<< orphan*/  local_id; int /*<<< orphan*/  binlog_position; int /*<<< orphan*/  port; } ;
struct node {int /*<<< orphan*/  id; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
struct connection {int /*<<< orphan*/  last_response_time; int /*<<< orphan*/  remote_ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  handshake_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (struct node,struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  precise_now ; 
 int FUNC2 (struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 

int FUNC5 (struct connection *c, struct rpc_handshake *P, int len) {
  FUNC4 (2, "rpc_execute_handshake: remote_id = %lld, len = %d\n", P->local_id, len);
  if (len != sizeof (struct rpc_handshake)) {
    return 0;
  }
  struct node node;
  node.host = c->remote_ip;
  node.port = P->port;
  node.id = P->local_id;
  FUNC0 (node, c);
  FUNC1 (FUNC3 (P->local_id, P->binlog_position) >= 1);
  c->last_response_time = precise_now;
  STATS->structured.handshake_received ++;
  return FUNC2 (c, P->local_id);
}