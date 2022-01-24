#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct aiocb {int dummy; } ;
struct TYPE_7__ {int aio_fildes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EINPROGRESS ; 
 int MAX_PRIORITY ; 
 int /*<<< orphan*/  O_DSYNC ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* fd ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,double,...) ; 
 scalar_t__ FUNC6 (int) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/ ** letter_stat ; 
 scalar_t__ log_drive ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__* sync_active ; 
 TYPE_1__* sync_aiocb ; 
 scalar_t__* sync_last ; 
 int verbosity ; 

void FUNC11 (int force) {
  FUNC10();

  double tm = -FUNC7 (CLOCK_MONOTONIC);
  int i;
  int res;
  int was_error = 0;

  for (i = 0; i <= MAX_PRIORITY; i++) {
    if (sync_active[i]) {
      res = FUNC1 (&sync_aiocb[i]);
      if (res == EINPROGRESS && now > sync_active[i] + 120) {
        FUNC5 (stderr, "%f aio_sync didn't complete for 120 seconds, invoking fsync()!\n", now);
        FUNC0 (sync_aiocb[i].aio_fildes, &sync_aiocb[i]);
        FUNC6 (sync_aiocb[i].aio_fildes);
        was_error = 1;
      }
      if (res != EINPROGRESS) {
        sync_active[i] = 0;
        res = FUNC3 (&sync_aiocb[i]);
        if (res >= 0) {
          sync_last[i] = now;
          sync_aiocb[i].aio_fildes = -1;
          if (verbosity > 1) {
            FUNC5 (stderr, "%f aio_fsync() completed successfully\n", now);
          }
        } else {
          FUNC5 (stderr, "%f error syncing %s: %m\n", now, fnames[i + 1]);
          FUNC6 (sync_aiocb[i].aio_fildes);
          was_error = 1;
        }
      }
    }

    if (!sync_active[i] && !force) {
      FUNC9 (&sync_aiocb[i], 0, sizeof (struct aiocb));
      sync_aiocb[i].aio_fildes = fd[i + 1];
      if (FUNC2 (O_DSYNC, &sync_aiocb[i]) < 0) {
        FUNC5 (stderr, "%f aio_fsync() for %s failed: %m\n", now, fnames[i + 1]);
        FUNC6 (fd[i + 1]);
        was_error = 1;
      }
      sync_active[i] = now;
      if (i > 0) {
        letter_stat[i - 1][5]++;
      }
      if (verbosity > 1 || log_drive) {
        FUNC8 ("%d queued aio_fsync() for %s\n", now, fnames[i + 1]);
      }
    }
    if (force) {
      if (FUNC6 (fd[i + 1]) < 0) {
        FUNC5 (stderr, "%f error syncing %s: %m", now, fnames[i + 1]);
      } else {
        sync_last[i] = now;
        if (verbosity > 1) {
          FUNC5 (stderr, "%f sync ok for %s\n", now, fnames[i + 1]);
        }
      }
    }
//    assert (fsync (fd[i + 1]) >= 0);
  }

  if (was_error) {
    was_error = 0;
    for (i = 0; i <= MAX_PRIORITY; i++) {
      if (FUNC6 (fd[i + 1]) < 0) {
        FUNC5 (stderr, "%f error resyncing %s: %m", now, fnames[i + 1]);
        was_error = 1;
      }
    }
    if (was_error) {
      FUNC4 (3);
    }
  }

  tm += FUNC7 (CLOCK_MONOTONIC);
  if (tm >= 0.1) {
    FUNC5 (stderr, "Warning. fsync time = %.9lf at time %ld\n", tm, now);
  }
}