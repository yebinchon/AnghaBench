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
struct rpc_query {double timeout; int /*<<< orphan*/  answer_len; int /*<<< orphan*/  answer; scalar_t__ start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_query*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ inbuf ; 
 int /*<<< orphan*/  rpc_get_and_parse ; 
 int FUNC6 (struct rpc_query*,double) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_query*) ; 
 struct rpc_query* FUNC8 (long long) ; 

int FUNC9 (long long qid, double timeout) { /* {{{ */
  FUNC0 (rpc_get_and_parse);
  FUNC2 (rpc_get_and_parse);
  struct rpc_query *q = FUNC8 (qid);
  if (!q) {
    FUNC1 (rpc_get_and_parse);
    return -1;
  }
  if (timeout >= 0) {
    timeout += q->start_time;
  } else {
    timeout = q->timeout;
  }
  int r = FUNC6 (q, timeout);
  //fetch_extra = q->extra;
  if (r < 0) {
    FUNC1 (rpc_get_and_parse);
    return -1;
  } else {
    if (inbuf) {
      inbuf = FUNC5 (inbuf);      
    }
    //struct rpc_query *q = rpc_query_get (qid);
    FUNC3 (q);
    inbuf = FUNC4 (q->answer, q->answer_len);    
    FUNC7 (q);    
    FUNC1 (rpc_get_and_parse);
    return 1;
  }
}