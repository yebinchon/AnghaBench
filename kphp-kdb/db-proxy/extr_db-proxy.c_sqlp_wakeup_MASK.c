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
struct TYPE_5__ {int total_bytes; int unprocessed_bytes; } ;
struct TYPE_4__ {int total_bytes; int unprocessed_bytes; } ;
struct connection {int fd; int queries_ok; scalar_t__ status; int flags; scalar_t__ pending_queries; scalar_t__ generation; TYPE_2__ Out; TYPE_1__ In; } ;
struct TYPE_6__ {int query_state; int /*<<< orphan*/  output_packet_seq; } ;

/* Variables and functions */
 int C_REPARSE ; 
 int C_WANTWR ; 
 TYPE_3__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_error ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_generation ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int query_failed ; 
 void* query_none ; 
#define  query_running 129 
#define  query_wait_target 128 
 int /*<<< orphan*/  FUNC4 (struct connection*,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC5 (struct connection *c) {
  if (verbosity > 1) {
    FUNC3 (stderr, "connection %d wakes up, query_state=%d, queries_ok=%d\n", c->fd, FUNC0(c)->query_state, c->queries_ok);
  }

  if (!c->queries_ok) {
    if (c->status != conn_wait_net) {
      FUNC3 (stderr, "connection %d (IN: %d+%d, OUT: %d+%d, FLAGS: %d) is in state %ld, conn_wait_net expected!\n", c->fd, c->In.total_bytes, c->In.unprocessed_bytes, c->Out.total_bytes, c->Out.unprocessed_bytes, c->flags, c->status);
    }
    FUNC1 (c->status == conn_wait_net);
    switch (FUNC0(c)->query_state) {
    case query_wait_target:
      if (verbosity > 1) {
        FUNC3 (stderr, "connection %d: switching query_state to query_failed\n", c->fd);
      }
      FUNC0(c)->query_state = query_failed;
      break;
    case query_running:
      if (verbosity > 0) {
        FUNC3 (stderr, "connection %d: sending Failed packet because of timeout\n", c->fd);
      }
      FUNC4 (c, 1045, 28000, "Failed", 6, ++FUNC0(c)->output_packet_seq);
      FUNC0(c)->query_state = query_none;
      //      c->status = conn_error;
      //      c->error = -7;
      break;
    default:
      FUNC3 (stderr, "connection %d awakened in impossible query_state\n", c->fd);
      FUNC1 (FUNC0(c)->query_state == query_wait_target || FUNC0(c)->query_state == query_running);
    }
  } else if (FUNC0(c)->query_state == query_wait_target) {
    if (verbosity > 1) {
      FUNC3 (stderr, "connection %d: have ready target, switching query_state from query_wait_target to query_none\n", c->fd);
    }
    FUNC0(c)->query_state = query_none;
  }

  FUNC1 (c->queries_ok >= 0);
  c->queries_ok = -1000;

  c->flags |= C_REPARSE;

  if (c->Out.total_bytes + c->Out.unprocessed_bytes > 0) {
    c->flags |= C_WANTWR;
  }

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  //c->target->first_query = c->target->last_query = (struct conn_query *)c->target;
  if (c->status != conn_error) {
    c->status = conn_expect_query;
  }

  FUNC2 (c);
  return 0;
}