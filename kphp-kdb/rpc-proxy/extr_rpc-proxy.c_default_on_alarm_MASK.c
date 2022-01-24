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
struct rpc_query {scalar_t__ start_time; int /*<<< orphan*/  old_qid; int /*<<< orphan*/  pid; int /*<<< orphan*/  in_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_ERROR_QUERY_TIMEOUT ; 
 scalar_t__ precise_now ; 
 int /*<<< orphan*/  rpc_answers_timedout ; 
 int /*<<< orphan*/  timeouted_queries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3 (struct rpc_query *q) {
  timeouted_queries ++;
  rpc_answers_timedout ++;
  if (FUNC1 (q->in_type, /*q->in,*/  &q->pid, q->old_qid) >= 0) {
    FUNC0 (TL_ERROR_QUERY_TIMEOUT, "Query timeout: working_time = %lf", precise_now - q->start_time);
    FUNC2 ();
  }
//  delete_rpc_query (q);
}