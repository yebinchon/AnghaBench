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
struct connection {int fd; } ;
struct TYPE_2__ {scalar_t__ wakeup_time; } ;
struct conn_query {TYPE_1__ timer; int /*<<< orphan*/ * cq_type; scalar_t__ extra; int /*<<< orphan*/  start_time; struct connection* requester; struct connection* outbound; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  proxy_watermark_query_type ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_watermark_rev_queries ; 
 int verbosity ; 
 int /*<<< orphan*/  watermark_rev_queries ; 
 struct conn_query* FUNC2 (int) ; 

int FUNC3 (struct connection *c, struct connection *d) {
  struct conn_query *Q = FUNC2 (sizeof (struct conn_query));

  if (verbosity > 1) {
    FUNC0 (stderr, "create_rev_watermark_query(%p[%d], %p[%d]): Q=%p\n", d, d->fd, c, c->fd, Q);
  }

  /*Q->custom_type = SQLS_DATA(c)->query_type;*/
  Q->outbound = c;
  Q->requester = d;
  Q->start_time = precise_now;
  Q->extra = 0;
  Q->cq_type = &proxy_watermark_query_type;
  Q->timer.wakeup_time = 0;

//  SQLS_DATA(c)->query_state = query_running;

  FUNC1 (Q);
  watermark_rev_queries++;
  tot_watermark_rev_queries++;

  if (verbosity > 1) {
    FUNC0 (stderr, "after push_conn_query()\n");
  }

  return 1;
}