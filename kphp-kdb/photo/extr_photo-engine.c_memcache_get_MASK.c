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
struct TYPE_3__ {int total_bytes; } ;
struct connection {int flags; TYPE_2__* type; TYPE_1__ Out; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* writer ) (struct connection*) ;} ;

/* Variables and functions */
 int C_INTIMEOUT ; 
 int C_WANTWR ; 
 int* WaitAioArr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int WaitAioArrPos ; 
 int /*<<< orphan*/  aio_metafile_query_type ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct connection*,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct connection*) ; 
 int FUNC4 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,double) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (struct connection*) ; 
 int verbosity ; 

int FUNC7 (struct connection *c, const char *key, int key_len) {
  FUNC0();
  int res = FUNC4 (c, key, key_len);

  if (res == -2) {
    if (c->flags & C_INTIMEOUT) {
      if (verbosity > 1) {
        FUNC3 (stderr, "memcache_get: IN TIMEOUT (%p)\n", c);
      }
      return 0;
    }

    if (c->Out.total_bytes > 8192) {
      c->flags |= C_WANTWR;
      c->type->writer (c);
    }

    FUNC1 (WaitAioArrPos);

    int i;
    for (i = 0; i < WaitAioArrPos; i++) {
      FUNC1 (WaitAioArr[i]);
      FUNC2 (WaitAioArr[i], c, 0.7, &aio_metafile_query_type);
    }
    FUNC5 (c, 0.5);
    return 0;
  }

  FUNC1 (res == 0);
  return 0;
}