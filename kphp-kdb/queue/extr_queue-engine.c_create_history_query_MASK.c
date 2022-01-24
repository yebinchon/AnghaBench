#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct connection {int fd; } ;
struct TYPE_6__ {scalar_t__ wakeup_time; } ;
struct conn_query {scalar_t__ start_time; TYPE_1__ timer; int /*<<< orphan*/ * cq_type; int /*<<< orphan*/  extra; struct connection* requester; struct connection* outbound; scalar_t__ custom_type; } ;
struct TYPE_7__ {char* name; } ;
typedef  TYPE_2__ queue ;
struct TYPE_8__ {char* name; } ;
typedef  TYPE_3__ qkey ;
struct TYPE_9__ {scalar_t__ extra; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  history_cq_func ; 
 int /*<<< orphan*/  FUNC3 (struct conn_query*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  pending_http_queries ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  str_memory ; 
 scalar_t__ FUNC5 (char*) ; 
 int verbosity ; 
 struct conn_query* FUNC6 (int) ; 

int FUNC7 (queue *U, struct connection *c, double timeout,
                          struct conn_query **rq, char *kname) {
  struct conn_query *q = FUNC6 (sizeof (struct conn_query));

  if (verbosity > 1) {
    FUNC2 (stderr, "OPPA\n");
    FUNC2 (stderr, "create_history_query (%p[%s], key = %p[%s], %p[%d]): q=%p\n", U, U->name,
    ((qkey *)FUNC0 (c)->extra)->name, ((qkey *)FUNC0 (c)->extra)->name,
    c, c->fd, q);
  }

  q->custom_type = 0;
  q->outbound = (struct connection *) U;
  q->requester = c;
  q->start_time = FUNC4();
  str_memory += FUNC5 (kname) + 1;
  q->extra = FUNC1 (kname);

  q->cq_type = &history_cq_func;
  q->timer.wakeup_time = (timeout > 0 ? q->start_time + timeout : 0);

  pending_http_queries++;
  FUNC3 (q);

  if (verbosity > 1) {
    FUNC2 (stderr, "after insert_conn_query()\n");
  }
  *rq = q;

  return 1;
}