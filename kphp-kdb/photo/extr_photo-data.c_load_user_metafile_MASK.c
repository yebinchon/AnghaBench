#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int metafile_len; struct aio_connection* aio; int /*<<< orphan*/ * metafile; } ;
typedef  TYPE_2__ user ;
struct connection {int dummy; } ;
struct aio_connection {void* basic_type; TYPE_2__* extra; } ;
struct TYPE_11__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/ * EMPTY__METAFILE ; 
 int /*<<< orphan*/  FUNC0 (struct aio_connection*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_connection*) ; 
 struct aio_connection* FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* ct_aio ; 
 int /*<<< orphan*/  ct_metafile_aio ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_5__ header ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,int) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int verbosity ; 

void FUNC14 (user *u, int local_id, int no_aio) {
  static struct aio_connection empty_aio_conn;

  FUNC1();

  if (FUNC13 (u)) {
    FUNC6 (u);
    FUNC2 (u);
    return;
  }

  //TODO: review second condition
  if (local_id > header.user_cnt || header.user_index[local_id].size <= 4) {
    u->metafile = EMPTY__METAFILE;
    u->metafile_len = 0;

    empty_aio_conn.extra = u;
    empty_aio_conn.basic_type = ct_aio;
    u->aio = &empty_aio_conn;

    FUNC11 ((struct connection *)(&empty_aio_conn), u->metafile_len);
    return;
  }

  if (u->aio != NULL) {
    FUNC4 (u->aio);
    if (u->aio != NULL) {
      FUNC0 (u->aio);
      return;
    }

    if (u->metafile != NULL) {
      return;
    } else {
      FUNC9 (stderr, "Previous AIO query failed for user at %p, scheduling a new one\n", u);
    }
  }

  u->metafile_len = header.user_index[local_id].size;
  u->metafile = FUNC8 (u->metafile_len);
  if (u->metafile == NULL) {
    FUNC9 (stderr, "no space to load metafile - cannot allocate %d bytes (%lld currently used)\n", u->metafile_len, (long long)FUNC7());
    FUNC3 (0);
  }
  allocated_metafile_bytes += u->metafile_len;

  if (verbosity > 2) {
    FUNC9 (stderr, "*** Scheduled reading user data from index %d at position %d, %d bytes, noaio = %d\n", fd[0], header.user_index[local_id].shift, u->metafile_len, no_aio);
  }

  FUNC3 (1 <= local_id && local_id <= header.user_cnt);
  if (no_aio) {
    double disk_time = -FUNC10 (CLOCK_MONOTONIC);

    //assert (lseek (fd[0], header.user_index[local_id].shift, SEEK_SET) == header.user_index[local_id].shift);
    int size = header.user_index[local_id].size;
    int r = FUNC12 (fd[0], u->metafile, size, header.user_index[local_id].shift);
    if (r != size) {
      FUNC9 (stderr, "error reading user %d from index file: read %d bytes instead of %d at position %d: %m\n", local_id, r, size, header.user_index[local_id].shift);
      FUNC3 (r == size);
    }

    disk_time += FUNC10 (CLOCK_MONOTONIC);
    if (verbosity > 2) {
      FUNC9 (stderr, "  disk time = %.6lf\n", disk_time);
    }

    empty_aio_conn.extra = u;
    empty_aio_conn.basic_type = ct_aio;
    u->aio = &empty_aio_conn;

    FUNC3 (u->aio != NULL);

    FUNC11 ((struct connection *)(&empty_aio_conn), u->metafile_len);
  } else {
    u->aio = FUNC5 (fd[0], u->metafile, header.user_index[local_id].shift, u->metafile_len, &ct_metafile_aio, u);
    FUNC3 (u->aio != NULL);
    FUNC0 (u->aio);
  }

  return;
}