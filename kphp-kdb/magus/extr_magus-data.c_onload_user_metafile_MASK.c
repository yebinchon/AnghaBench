#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int metafile_len; struct aio_connection* aio; int /*<<< orphan*/ * metafile; } ;
typedef  TYPE_1__ user ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;

/* Variables and functions */
 int MEMORY_USER_PERCENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ ct_aio ; 
 int /*<<< orphan*/  cur_users ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int max_memory ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 () ; 
 int verbosity ; 

int FUNC6 (struct connection *c, int read_bytes) {
  if (verbosity > 2) {
    FUNC4 (stderr, "onload_user_metafile (%p,%d)\n", c, read_bytes);
  }

  struct aio_connection *a = (struct aio_connection *)c;
  user *u = (user *) a->extra;

  FUNC1 (a->basic_type == ct_aio);
  FUNC1 (u != NULL);

  if (u->aio != a) {
    FUNC4 (stderr, "assertion (u->aio == a) will fail\n");
    FUNC4 (stderr, "%p != %p\n", u->aio, a);
  }

  FUNC1 (u->aio == a);

  if (read_bytes != u->metafile_len) {
    if (verbosity > 0) {
      FUNC4 (stderr, "ERROR reading user: read %d bytes out of %d: %m\n", read_bytes, u->metafile_len);
    }

    FUNC3 (u->metafile, u->metafile_len);
    allocated_metafile_bytes -= u->metafile_len;
    u->metafile = NULL;
    u->metafile_len = -1;
    u->aio = NULL;
    return 0;
  }
  FUNC1 (read_bytes == u->metafile_len);

  if (verbosity > 2) {
    FUNC4 (stderr, "*** Read user: read %d bytes\n", read_bytes);
  }

  u->aio = NULL;

  FUNC2 (u);

  FUNC0 (u);
  cur_users++;

  while (allocated_metafile_bytes > max_memory * MEMORY_USER_PERCENT) {
    if (FUNC5() == -1) {
      FUNC1 (0);
    }
  }

  return 1;
}