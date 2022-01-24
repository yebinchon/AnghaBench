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
struct connection {int generation; scalar_t__ pending_queries; } ;
struct conn_query {int req_generation; struct connection* requester; scalar_t__ extra; } ;

/* Variables and functions */
 int conn_generation ; 
 int /*<<< orphan*/  FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct conn_query*,struct connection*) ; 
 int /*<<< orphan*/  pending_http_queries ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  str_memory ; 
 scalar_t__ FUNC4 (char*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC5 (struct conn_query*,int) ; 

int FUNC6 (struct conn_query *q) {
  if (verbosity > 1) {
    FUNC2 (stderr, "delete_history_query (%p,%p)\n", q, q->requester);
  }

  char *kname = (char *)q->extra;
  FUNC3 (kname);
  str_memory -= FUNC4 (kname) + 1;
  FUNC1 (kname);

  pending_http_queries--;
  struct connection *c = q->requester;

  int req_generation = q->req_generation;
  FUNC0 (q);

  if (c->generation == req_generation) {
    c->generation = ++conn_generation;
    c->pending_queries = 0;
  }
  FUNC5 (q, sizeof (*q));
  return 0;
}