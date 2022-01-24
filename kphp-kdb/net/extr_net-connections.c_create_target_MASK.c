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
struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct conn_target {int refcnt; struct conn_query* last_query; struct conn_query* first_query; struct connection* last_conn; struct connection* first_conn; int /*<<< orphan*/  reconnect_timeout; int /*<<< orphan*/  max_connections; int /*<<< orphan*/  min_connections; int /*<<< orphan*/  type; int /*<<< orphan*/  port; int /*<<< orphan*/  target_ipv6; TYPE_1__ target; } ;
struct conn_query {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_TARGETS ; 
 struct conn_target* Targets ; 
 scalar_t__ allocated_targets ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct conn_target** FUNC1 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct conn_target** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct conn_target*,struct conn_target*,int) ; 

struct conn_target *FUNC4 (struct conn_target *source, int *was_created) {
  struct conn_target **targ = 
    source->target.s_addr ? 
    FUNC1 (source->target, source->port, source->type) :
    FUNC2 (source->target_ipv6, source->port, source->type);
  struct conn_target *t = *targ;
  if (t) {
    FUNC0 (t->refcnt >= 0);
    t->min_connections = source->min_connections;
    t->max_connections = source->max_connections;
    t->reconnect_timeout = source->reconnect_timeout;
    t->refcnt++;
    if (was_created) {
      *was_created = 0;
    }
  } else {
    FUNC0 (allocated_targets < MAX_TARGETS);
    t = *targ = &Targets[allocated_targets++];
    FUNC3 (t, source, sizeof (*source));
    t->first_conn = t->last_conn = (struct connection *) t;
    t->first_query = t->last_query = (struct conn_query *) t;
    t->refcnt = 1;
    if (was_created) {
      *was_created = 1;
    }
  }
  return t;
}