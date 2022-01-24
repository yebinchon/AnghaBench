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
struct hts_data {int /*<<< orphan*/ * extra; } ;
struct connection {scalar_t__ status; } ;
typedef  int /*<<< orphan*/  php_worker ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC5 (struct connection *c) {
  struct hts_data *D = FUNC0(c);

  //fprintf (stderr, "pending_queries = %d\n", c->pending_queries);

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  FUNC4 (worker, 0, "http connection alarm");
  int res = FUNC3 (worker);
  if (res == 1) {
    FUNC2 (c, 1);
  } else {
    FUNC1 ("worker is unfinished after alarm" && 0);
  }
  return 0;
}