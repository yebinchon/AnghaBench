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
struct connection {int fd; scalar_t__ query_start_time; } ;
struct conn_target {int dummy; } ;
struct TYPE_3__ {scalar_t__ wakeup_time; } ;
struct conn_query {scalar_t__ start_time; TYPE_1__ timer; int /*<<< orphan*/ * cq_type; scalar_t__ extra; struct connection* requester; } ;
struct TYPE_4__ {int /*<<< orphan*/  query_state; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*,struct conn_query*) ; 
 int /*<<< orphan*/  proxy_delayed_query_type ; 
 int /*<<< orphan*/  query_wait_target ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_delayed_queries ; 
 int verbosity ; 
 int /*<<< orphan*/  waiting_queries ; 
 struct conn_query* FUNC3 (int) ; 

int FUNC4 (struct conn_target *t, struct connection *c, double timeout) {
  struct conn_query *Q = FUNC3 (sizeof (struct conn_query));

  if (verbosity > 1) {
    FUNC1 (stderr, "create_delayed_query(%p, %p[%d]): Q=%p\n", t, c, c->fd, Q);
  }

  /*Q->custom_type = SQLS_DATA(c)->query_type;*/
  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = 0;
  Q->cq_type = &proxy_delayed_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  FUNC0(c)->query_state = query_wait_target;

  FUNC2 (Q, (struct conn_query *)t);
  waiting_queries++;
  tot_delayed_queries++;

  if (verbosity > 1) {
    FUNC1 (stderr, "after insert_conn_query_into_list()\n");
  }

  return 1;
}