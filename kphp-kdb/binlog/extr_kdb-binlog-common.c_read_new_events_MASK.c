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
 int binlog_fd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (void) {
  int res = FUNC1 (0, 1);
  if (res < 0) {
    FUNC0 (stderr, "fatal: ceased reading binlog updates from %d.\n", binlog_fd);
    binlog_fd = -1;
  }
}