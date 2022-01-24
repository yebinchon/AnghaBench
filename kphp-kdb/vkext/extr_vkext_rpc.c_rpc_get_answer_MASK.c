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
struct rpc_query {int status; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct rpc_query*,double)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct rpc_query*,double)) ; 
 double precise_now ; 
 int /*<<< orphan*/  query_completed ; 
#define  query_status_error 132 
#define  query_status_ok 131 
#define  query_status_receiving 130 
#define  query_status_running 129 
#define  query_status_sent 128 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_query*) ; 
 int /*<<< orphan*/  timedout_queries ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6 (struct rpc_query *q, double timeout) { /* {{{ */
  if (!q) {
    //fprintf (stderr, "Can not find query with id %lld\n", q->qid);
    return -1;
  }
  FUNC1 (rpc_get_answer);
  FUNC5 ();
  while (timeout > precise_now && (q->status == query_status_sent || q->status == query_status_running || q->status == query_status_receiving)) {
    FUNC2 (timeout);
    FUNC5 ();
  }
  switch (q->status) {
  case query_status_sent:
  case query_status_running:
  case query_status_receiving:
    FUNC3 (q);
    timedout_queries ++;
    FUNC0 (rpc_get_answer);
    return -1;
  case query_status_ok:
    query_completed = FUNC4 (query_completed, q->qid);
    FUNC0 (rpc_get_answer);
    return 1;
  case query_status_error:
    query_completed = FUNC4 (query_completed, q->qid);
    FUNC3 (q);
    FUNC0 (rpc_get_answer);
    return -1;
  }
  FUNC0 (rpc_get_answer);
  return 0;
}