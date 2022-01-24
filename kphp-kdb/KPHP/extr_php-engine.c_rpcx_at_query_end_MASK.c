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
struct connection {scalar_t__ status; int /*<<< orphan*/  flags; scalar_t__ pending_queries; scalar_t__ generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_REPARSE ; 
 struct rpcs_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_generation ; 
 scalar_t__ conn_wait_net ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int lease_ready_flag ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5 (struct connection *c) {
  struct rpcs_data *D = FUNC0(c);

  FUNC2 (c);
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  D->extra = NULL;

  if (!FUNC3()) {
    lease_ready_flag = 1;
    FUNC4();
  }
  c->flags |= C_REPARSE;
  FUNC1 (c->status != conn_wait_net);
}