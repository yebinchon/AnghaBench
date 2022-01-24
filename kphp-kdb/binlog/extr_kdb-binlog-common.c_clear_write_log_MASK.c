#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  LogBuffer ; 
 int /*<<< orphan*/  LogSlaveBuffer ; 
 int /*<<< orphan*/  SLOG_BUFFER_SIZE ; 
 int /*<<< orphan*/  ULOG_BUFFER_SIZE ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  aio_write_start ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_disabled ; 
 scalar_t__ binlog_write_active ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6 (void) {
  if (binlog_disabled) {
    FUNC1 (&W, LogSlaveBuffer, SLOG_BUFFER_SIZE);
  } else {
    /* wait for pending aio_write termination */
    int cnt = 0;
    while (binlog_write_active) {
      FUNC3 ();
      FUNC5 (10000);
      if (++cnt > 300) {
        FUNC4 (stderr, "cannot write binlog for 3 seconds!");
        FUNC2 (3);
      }
    }
    if (cnt > 0) {
      FUNC4 (stderr, "clear_write_log: had to wait %d milliseconds for aio_write termination\n", cnt);
    }

    FUNC0 (!aio_write_start);

    FUNC1 (&W, LogBuffer, ULOG_BUFFER_SIZE);
  }
}