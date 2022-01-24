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
struct rpc_queue {int /*<<< orphan*/  remaining; int /*<<< orphan*/  completed; } ;
struct rpc_query {scalar_t__ status; scalar_t__ queue_id; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 scalar_t__ query_status_error ; 
 scalar_t__ query_status_ok ; 
 struct rpc_queue* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (struct rpc_query *q) {
  if (q->queue_id && (q->status == query_status_ok || q->status == query_status_error)) {
    struct rpc_queue *Q = FUNC0 (q->queue_id);
    if (Q) {
      Q->completed = FUNC1 (Q->completed, q->qid);
      Q->remaining --;
    }
    q->queue_id  = 0;
  }
}