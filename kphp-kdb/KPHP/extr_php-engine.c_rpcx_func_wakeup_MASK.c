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
struct rpcs_data {int /*<<< orphan*/ * extra; } ;
struct connection {scalar_t__ status; scalar_t__ pending_queries; } ;
typedef  int /*<<< orphan*/  php_worker ;

/* Variables and functions */
 struct rpcs_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_wait_net ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 

int FUNC4 (struct connection *c) {
  struct rpcs_data *D = FUNC0(c);

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;

  php_worker *worker = D->extra;
  int res = FUNC2 (worker);
  if (res == 1) {
    FUNC3 (c);
  } else {
    FUNC1 (c->pending_queries >= 0 && c->status == conn_wait_net);
  }
  return 0;
}