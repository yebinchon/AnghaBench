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
struct mcs_data {scalar_t__ query_type; } ;
struct TYPE_2__ {scalar_t__ total_bytes; } ;
struct connection {int /*<<< orphan*/  flags; TYPE_1__ Out; int /*<<< orphan*/  status; scalar_t__ pending_queries; scalar_t__ generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_WANTWR ; 
 struct mcs_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_generation ; 
 int /*<<< orphan*/  conn_reading_query ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct connection*) ; 
 scalar_t__ mct_get_resume ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (struct connection *c) {
  struct mcs_data *D = FUNC0(c);

  if (verbosity > 1) {
    FUNC3 (stderr, "hints_engine_wakeup (%p)\n", c);
  }

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  c->status = conn_reading_query;
  FUNC1 (D->query_type == mct_get_resume);
  FUNC2 (c);

  if (c->Out.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }

  return 0;
}