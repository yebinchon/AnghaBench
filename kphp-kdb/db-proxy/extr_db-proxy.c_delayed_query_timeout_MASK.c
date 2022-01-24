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
struct conn_query {scalar_t__ req_generation; TYPE_2__* requester; } ;
struct TYPE_4__ {scalar_t__ generation; } ;
struct TYPE_3__ {scalar_t__ query_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  active_queries ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*) ; 
 int /*<<< orphan*/  expired_delayed_queries ; 
 int /*<<< orphan*/  expired_forwarded_queries ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct conn_query*) ; 
 scalar_t__ query_failed ; 
 scalar_t__ query_wait_target ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  waiting_queries ; 

int FUNC4 (struct conn_query *q) {
  if (verbosity > 0) {
    FUNC3 (stderr, "delayed query %p timed out\n", q);
  }
  if (q->requester && q->requester->generation == q->req_generation) {
    FUNC1 (FUNC0(q->requester)->query_state == query_wait_target);
    FUNC0(q->requester)->query_state = query_failed;
  }
  active_queries++;
  FUNC2 (q);
  waiting_queries--;
  expired_forwarded_queries++;
  expired_delayed_queries++;
  return 0;
}