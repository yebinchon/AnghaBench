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
struct conn_query {scalar_t__ start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  active_aio_queries ; 
 int /*<<< orphan*/  FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct conn_query*,double) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 double total_aio_time ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC3 (struct conn_query*,int) ; 

int FUNC4 (struct conn_query *q) {
  if (q->start_time > 0) {
    double q_time = FUNC2 (CLOCK_MONOTONIC) - q->start_time;
    total_aio_time += q_time;
    if (verbosity > 1) {
      FUNC1 (stderr, "delete_aio_query(%p): query time %.6f\n", q, q_time);
    }
  }
  active_aio_queries--;
  FUNC0 (q);
  FUNC3 (q, sizeof (struct conn_query));
  return 0;
}