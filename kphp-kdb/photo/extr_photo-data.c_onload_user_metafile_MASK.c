#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int metafile_len; struct aio_connection* aio; int /*<<< orphan*/ * metafile; } ;
typedef  TYPE_1__ user ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int MEMORY_USER_PERCENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ ct_aio ; 
 int cur_users ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  load_user ; 
 int max_memory ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int verbosity ; 

int FUNC8 (struct connection *c, int read_bytes) {
  INIT;

  if (verbosity > 2) {
    FUNC5 (stderr, "onload_user_metafile (%d,%d)\n", c, read_bytes);
  }

  struct aio_connection *a = (struct aio_connection *)c;
  user *u = (user *) a->extra;

  FUNC2 (a->basic_type == ct_aio);
  FUNC2 (u != NULL);
  FUNC2 (u->aio == a);

  if (read_bytes != u->metafile_len) {
    if (verbosity > 0) {
      FUNC5 (stderr, "ERROR reading user: read %d bytes out of %d: %m\n", read_bytes, u->metafile_len);
    }

    FUNC4 (u->metafile, u->metafile_len);
    allocated_metafile_bytes -= u->metafile_len;
    u->metafile = NULL;
    u->metafile_len = -1;
    u->aio = NULL;
    FUNC0(load_user, 0);
  }
  FUNC2 (read_bytes == u->metafile_len);

  if (verbosity > 2) {
    FUNC5 (stderr, "*** Read user: read %d bytes\n", read_bytes);
  }

  u->aio = NULL;

  FUNC3 (u);
  FUNC7 (u);

  FUNC1 (u);
  cur_users++;

  //fix:
  while (allocated_metafile_bytes > max_memory * MEMORY_USER_PERCENT || (0 && cur_users > 1)) {
    FUNC2 (FUNC6() != -1);
  }

  FUNC0(load_user, 1);
}