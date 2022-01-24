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
struct connection {int fd; int pending_queries; int status; int /*<<< orphan*/  flags; TYPE_1__* Tmp; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_3__ {scalar_t__ total_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ conn_wait_aio ; 
 int /*<<< orphan*/  disable_wildcard ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__* mc_store ; 
 int FUNC3 (struct connection*) ; 
 scalar_t__ FUNC4 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  wildcard_arrays_allocated ; 

int FUNC5 (struct connection *c) {
  if (verbosity > 1) {
    FUNC1 (stderr, "pmemcached_engine connection %d timeout alarm, %d queries pending, status=%d\n", c->fd, c->pending_queries, c->status);
  }
  if (c->Tmp && !disable_wildcard && c->Tmp->total_bytes) {
    if (FUNC4 (c, 0)) {
      if (mc_store->ptr) {
        FUNC2 (mc_store->ptr);
        wildcard_arrays_allocated --;
        //free_tmp_buffers (c);
      }
    }
  }
  FUNC0 (c->status == conn_wait_aio);
  c->flags |= C_INTIMEOUT;
  return FUNC3 (c);
}