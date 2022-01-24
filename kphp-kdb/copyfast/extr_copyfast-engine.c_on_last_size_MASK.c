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
 int /*<<< orphan*/  BINLOG_NAME ; 
 int BINLOG_NAME_LEN ; 
 scalar_t__ BINLOG_POSITION ; 
 scalar_t__ EEXIST ; 
 scalar_t__ LAST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char*) ; 

void FUNC5 (void) {
  if (BINLOG_POSITION > LAST_SIZE) {
    FUNC1 (stderr, "Expected size %ld, found %ld\n", LAST_SIZE, BINLOG_POSITION);
    return;
  }
  static char buf[1024];
  int s = BINLOG_NAME_LEN;
  FUNC3 (buf, BINLOG_NAME, s - 7);
  buf[s - 7] = 0;

  int r = FUNC2 (BINLOG_NAME, buf);
  if (r < 0) {
    if (errno == EEXIST) {
      r = FUNC4 (buf);
      if (r < 0) {
        FUNC1 (stderr, "Can not delete previous link: %m\n");
        FUNC0 (r == 0);
      }
      r = FUNC2 (BINLOG_NAME, buf);
      if (r < 0) {
        FUNC1 (stderr, "Can not create link: %m\n");
        FUNC0 (r == 0);
      }
    } else {
      FUNC1 (stderr, "Can not create link: %m\n");
      FUNC0 (r == 0);
    }
  }
  FUNC0 (BINLOG_POSITION == LAST_SIZE);
}