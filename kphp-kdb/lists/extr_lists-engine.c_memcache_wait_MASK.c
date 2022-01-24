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
struct TYPE_4__ {int total_bytes; } ;
struct connection {int flags; TYPE_1__* type; TYPE_2__ Out; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* writer ) (struct connection*) ;} ;

/* Variables and functions */
 int C_INTIMEOUT ; 
 int C_WANTWR ; 
 int /*<<< orphan*/ * WaitAioArr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int WaitAioArrPos ; 
 int /*<<< orphan*/  aio_metafile_query_type ; 
 double aio_t ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct connection*,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,double) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int verbosity ; 

int FUNC5 (struct connection *c) {
  if (!WaitAioArrPos) {
    return 0;
  }
  if (verbosity > 2) {
    FUNC2 (stderr, "wait for aio..\n");
  }
  if (c->flags & C_INTIMEOUT) {
    if (verbosity > 1) {
      FUNC2 (stderr, "memcache: IN TIMEOUT (%p)\n", c);
    }
    FUNC0 ();
    return 0;
  }
  if (c->Out.total_bytes > 8192) {
    c->flags |= C_WANTWR;
    c->type->writer (c);
  }
  int i;
  for (i = 0; i < WaitAioArrPos; i++) {
    FUNC1 (WaitAioArr[i], c, 1.1 * aio_t, &aio_metafile_query_type);
  }
  FUNC3 (c, aio_t);
  FUNC0 ();
  //WaitAio = 0;
  return 1;
}