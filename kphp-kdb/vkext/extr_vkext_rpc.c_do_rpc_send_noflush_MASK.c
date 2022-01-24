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
struct rpc_query {int /*<<< orphan*/  qid; } ;
struct rpc_connection {int /*<<< orphan*/  servers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rpc_query* FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_query*) ; 
 int /*<<< orphan*/  rpc_send ; 
 scalar_t__ FUNC5 (struct rpc_connection*,int /*<<< orphan*/ ,double) ; 

struct rpc_query *FUNC6 (struct rpc_connection *c, double timeout) { /* {{{ */
  FUNC0 (rpc_send);
  FUNC2 (rpc_send);
  if (!c || !c->servers) {
    FUNC1 (rpc_send);
    return 0;
  }

  
  struct rpc_query *q = FUNC3 (timeout);
  if (!q) {
    FUNC1 (rpc_send);
    return 0;
  }
  if (FUNC5 (c, q->qid, timeout) < 0) {
//    rpc_server_failure (c->server);
    FUNC4 (q);
    FUNC1 (rpc_send);
    return 0;
  }

  FUNC1 (rpc_send); 
  return q;
}