#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int pending_queries; } ;
typedef  int /*<<< orphan*/  queue ;
struct TYPE_6__ {int n; TYPE_1__** k; } ;
typedef  TYPE_2__ qkey_group ;
struct TYPE_7__ {TYPE_1__* extra; } ;
struct TYPE_5__ {int /*<<< orphan*/  subscribed; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  conn; int /*<<< orphan*/ * q; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 TYPE_4__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct connection*,double,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC5 (qkey_group *g, struct connection *c, double timeout) {
  int i;

  if (verbosity > 2) {
    FUNC3 (stderr, "create_history_query_group (size = %d) (timeout = %lf)\n", g->n, timeout);
  }
  for (i = 0; i < g->n; i++) {
    queue *q = g->k[i]->q;
    FUNC1 (q != NULL);
    FUNC0 (c)->extra = g->k[i];
    FUNC2 (q, c, timeout, &g->k[i]->conn, g->k[i]->name);
    g->k[i]->lock++;
    g->k[i]->subscribed = FUNC4 (CLOCK_MONOTONIC);
  }
  c->pending_queries = 1;

  return 1;
}