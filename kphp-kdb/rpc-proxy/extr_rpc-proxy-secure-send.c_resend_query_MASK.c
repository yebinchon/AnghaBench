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
struct secure_send_extra {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
struct rpc_query {struct secure_send_extra* extra; int /*<<< orphan*/  qid; } ;
struct process_id {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_INVOKE_REQ ; 
 int /*<<< orphan*/  resent_queries ; 
 struct connection* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (struct rpc_query *q, struct process_id *pid) {
  resent_queries ++;
  struct connection *d = FUNC0 (FUNC1 (pid->ip, pid->port), 0);
  if (!d) { return; }
  FUNC3 (d, q->qid);
  struct secure_send_extra *E = q->extra;
  FUNC4 (E->data, E->data_size);
  FUNC2 (RPC_INVOKE_REQ);
}