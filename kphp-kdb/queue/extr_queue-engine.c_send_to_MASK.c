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
struct connection {int /*<<< orphan*/  last_query_sent_time; int /*<<< orphan*/  Out; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct conn_target {int port; TYPE_1__ target; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* flush_query ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct connection* FUNC4 (struct conn_target*) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  sent_queries ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int verbosity ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7 (struct conn_target *S, char *query, int query_len, int force) {
  struct connection *d = FUNC4 (S);
  if (d == NULL) {
    if (verbosity > 0) {
      FUNC3 (stderr, "cannot find connection to target %s:%d for query %s, dropping query\n", S ? FUNC2 (S->target.s_addr, 0) : "?", S ? S->port : 0, query);
    }
    return -1;
  }
  if (verbosity > 1) {
    FUNC3 (stderr, "send query '%s'\n", query);
  }
  FUNC1 (FUNC6 (&d->Out, query, query_len) == query_len);

  sent_queries++;

  if (force) {
    FUNC0 (d)->flush_query (d);
  }
  d->last_query_sent_time = precise_now;
  return 0;
}