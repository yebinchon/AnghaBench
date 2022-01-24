#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct aiocb {int dummy; } ;
struct TYPE_11__ {int aio_fildes; } ;
struct TYPE_9__ {int /*<<< orphan*/  sigev_notify; } ;
struct TYPE_10__ {int aio_fildes; TYPE_1__ aio_sigevent; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  O_DSYNC ; 
 int /*<<< orphan*/  SIGEV_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ binlog_disabled ; 
 int binlog_fd ; 
 scalar_t__ binlog_sync_active ; 
 TYPE_2__ binlog_sync_aiocb ; 
 scalar_t__ binlog_sync_last ; 
 TYPE_3__ binlog_write_aiocb ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC9 (int mode) {
  int res, err;
  if (!binlogname || binlog_disabled) {
    return;
  }
  if (binlog_sync_active) {
    res = err = FUNC1 (&binlog_sync_aiocb);
    if (res == EINPROGRESS && now > binlog_sync_active + 120) {
      FUNC6 (stderr, "%ld binlog aio_sync didn't complete for 120 seconds, invoking fsync()!\n", now);
      FUNC0 (binlog_sync_aiocb.aio_fildes, &binlog_sync_aiocb);
      FUNC7 (binlog_sync_aiocb.aio_fildes);
      FUNC5 (3);
    }
    if (res != EINPROGRESS) {
      binlog_sync_active = 0;
      res = FUNC3 (&binlog_sync_aiocb);
      if (res >= 0) {
        binlog_sync_last = now;
        if (binlog_sync_aiocb.aio_fildes != binlog_fd && binlog_write_aiocb.aio_fildes != binlog_sync_aiocb.aio_fildes) {
          FUNC4 (binlog_sync_aiocb.aio_fildes);
        }
        binlog_sync_aiocb.aio_fildes = -1;
        if (verbosity > 1) {
          FUNC6 (stderr, "%ld aio_fsync() for binlog completed successfully\n", now);
        }
      } else {
        errno = err;
        FUNC6 (stderr, "%ld error syncing binlog %s: %m\n", now, binlogname);
        FUNC7 (binlog_sync_aiocb.aio_fildes);
        FUNC5 (3);
      }
    }
  }
  if (!binlog_sync_active && mode == 1) {
    FUNC8 (&binlog_sync_aiocb, 0, sizeof (struct aiocb));
    binlog_sync_aiocb.aio_fildes = binlog_fd;
    binlog_sync_aiocb.aio_sigevent.sigev_notify = SIGEV_NONE;
    if (FUNC2 (O_DSYNC, &binlog_sync_aiocb) < 0) {
      FUNC6 (stderr, "%ld aio_fsync() for binlog failed: %m\n", now);
      FUNC7 (binlog_fd);
      FUNC5 (3);
    }
    binlog_sync_active = now;
    if (verbosity > 1) {
      FUNC6 (stderr, "%ld queued aio_fsync() for binlog\n", now);
    }
  }
  if (mode >= 2) {
    if (FUNC7 (binlog_fd) < 0) {
      FUNC6 (stderr, "%ld error syncing binlog: %m", now);
    } else {
      binlog_sync_last = now;
      if (verbosity > 1) {
        FUNC6 (stderr, "%ld binlog sync ok\n", now);
      }
    }
  }
}