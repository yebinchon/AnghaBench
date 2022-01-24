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
struct gather_data {int dummy; } ;
struct connection {scalar_t__ query_start_time; } ;
struct TYPE_3__ {scalar_t__ wakeup_time; } ;
struct conn_query {TYPE_1__ timer; scalar_t__ start_time; int /*<<< orphan*/ * cq_type; struct gather_data* extra; struct connection* requester; struct connection* outbound; int /*<<< orphan*/  custom_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  query_type; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct conn_query*) ; 
 int /*<<< orphan*/  search_query_type ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 struct conn_query* FUNC4 (int) ; 

struct conn_query *FUNC5 (struct gather_data *G, struct connection *c, double timeout) {
  struct conn_query *Q = FUNC4 (sizeof (struct conn_query));

  Q->custom_type = FUNC0(c)->query_type;
  Q->outbound = c;
  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = G;
  Q->cq_type = &search_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  FUNC3 (Q);

  if (verbosity > 1) {
    FUNC1 (stderr, "after insert_conn_query(). Q->start_time = %ld, Q->timer.wakeup_time=%ld. cur_time=%d\n", Q->start_time, Q->timer.wakeup_time, FUNC2 ());
  }

  return Q;
}