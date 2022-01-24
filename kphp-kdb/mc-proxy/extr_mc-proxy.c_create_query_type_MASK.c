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
struct connection {int fd; scalar_t__ query_start_time; } ;
struct TYPE_2__ {scalar_t__ wakeup_time; } ;
struct conn_query {int custom_type; scalar_t__ start_time; TYPE_1__ timer; int /*<<< orphan*/ * cq_type; scalar_t__ extra; struct connection* requester; struct connection* outbound; } ;

/* Variables and functions */
 int /*<<< orphan*/  active_queries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  proxy_query_type ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_forwarded_queries ; 
 int verbosity ; 
 struct conn_query* FUNC2 (int) ; 

struct conn_query *FUNC3 (struct connection *d, struct connection *c, double timeout, int type) {
  struct conn_query *Q = FUNC2 (sizeof (struct conn_query));

  if (verbosity > 1) {
    FUNC0 (stderr, "create_query(%p[%d], %p[%d]): Q=%p\n", d, d->fd, c, c->fd, Q);
  }

  Q->custom_type = type;
  Q->outbound = d;
  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = 0;
  Q->cq_type = &proxy_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  FUNC1 (Q);
  active_queries++;
  tot_forwarded_queries++;

  if (verbosity > 1) {
    FUNC0 (stderr, "after insert_conn_query()\n");
  }

  return Q;
}