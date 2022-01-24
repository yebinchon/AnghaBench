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
struct rpc_query {double timeout; char* answer; int answer_len; scalar_t__ start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_query*) ; 
 int /*<<< orphan*/  rpc_get ; 
 int /*<<< orphan*/  rpc_get_and_parse ; 
 int FUNC4 (struct rpc_query*,double) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_query*) ; 
 struct rpc_query* FUNC6 (long long) ; 

int FUNC7 (long long qid, double timeout, char **value) { /* {{{ */
  FUNC0 (rpc_get);
  FUNC2 (rpc_get);
  struct rpc_query *q = FUNC6 (qid);
  if (!q) {
    FUNC1 (rpc_get);
    return -1;
  }
  if (timeout >= 0) {
    timeout += q->start_time;
  } else {
    timeout = q->timeout;
  }
  int r = FUNC4 (q, timeout);
  if (r < 0) {
    FUNC1 (rpc_get);
    return -1;
  } else {
    //struct rpc_query *q = rpc_query_get (qid);
    FUNC3 (q);
    *value = q->answer;
    int r = q->answer_len;
    FUNC5 (q);    
    FUNC1 (rpc_get_and_parse);
    return r;
  }
}