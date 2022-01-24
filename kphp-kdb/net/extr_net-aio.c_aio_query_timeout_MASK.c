#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct conn_query {TYPE_1__* outbound; } ;
struct TYPE_2__ {int fd; int unreliability; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  expired_aio_queries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct conn_query*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC2 (struct conn_query *q) {
  if (verbosity > 0) {
    FUNC1 (stderr, "query %p of connection %p (fd=%d) timed out, unreliability=%d\n", q, q->outbound, q->outbound->fd, q->outbound->unreliability);
  }
  expired_aio_queries++;
  FUNC0 (q);
  return 0;
}