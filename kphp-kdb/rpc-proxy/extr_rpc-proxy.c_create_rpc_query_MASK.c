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
struct rpc_query_type {int dummy; } ;
struct TYPE_3__ {double wakeup_time; int /*<<< orphan*/  wakeup; scalar_t__ h_idx; } ;
struct process_id {int dummy; } ;
struct rpc_query {long long qid; long long old_qid; int in_type; double start_time; TYPE_1__ ev; struct rpc_query_type type; struct process_id pid; } ;
typedef  enum tl_type { ____Placeholder_tl_type } tl_type ;
struct TYPE_4__ {double timeout; } ;

/* Variables and functions */
 TYPE_2__* CC ; 
 int /*<<< orphan*/  active_queries ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 double precise_now ; 
 int /*<<< orphan*/  rpc_query_hash_table ; 
 int /*<<< orphan*/  rpc_query_timeout_gateway ; 
 struct rpc_query* FUNC4 (int) ; 

struct rpc_query *FUNC5 (long long qid, struct process_id pid, long long old_qid, enum tl_type in_type/*, void *in*/, struct rpc_query_type rpc_query_type, double timeout) {
  struct rpc_query *q = FUNC4 (sizeof (*q));
  q->qid = qid;
  q->pid = pid;
  q->old_qid = old_qid;
//  q->in = in;
  q->in_type = in_type;
  q->start_time = precise_now;
  FUNC0 (!FUNC2 (&rpc_query_hash_table, q));
  FUNC1 (&rpc_query_hash_table, q);
  q->ev.h_idx = 0;
  q->ev.wakeup = rpc_query_timeout_gateway;
  q->ev.wakeup_time = precise_now + (timeout ? timeout : CC->timeout);
  q->type = rpc_query_type;
  FUNC3 (&q->ev);
  active_queries ++;
  return q;
}