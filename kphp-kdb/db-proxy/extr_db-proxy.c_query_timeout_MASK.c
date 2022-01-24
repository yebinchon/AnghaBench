#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct conn_query {TYPE_2__* outbound; } ;
struct TYPE_5__ {int unreliability; int fd; int error; TYPE_1__* ev; int /*<<< orphan*/  flags; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_FAILED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  conn_error ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  expired_forwarded_queries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn_query*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC4 (struct conn_query *q) {
  q->outbound->unreliability += 1000;
  if (verbosity > 0) {
    FUNC2 (stderr, "query %p of connection %p (fd=%d) timed out, unreliability=%d\n", q, q->outbound, q->outbound->fd, q->outbound->unreliability);
  }
  FUNC0 (q->outbound);
  q->outbound->status = conn_error;
  q->outbound->error = -239;
  q->outbound->flags |= C_FAILED;
  if (!q->outbound->ev->in_queue) {
    FUNC3 (q->outbound->ev);
  }
  FUNC1 (q);
  expired_forwarded_queries++;
  return 0;
}