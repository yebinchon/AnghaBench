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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t dump_fd ; 
 int /*<<< orphan*/  dump_name ; 
 int dump_type ; 
 int engine_n ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC5 (int dump_id) {
  FUNC0 (0 <= dump_id && dump_id < engine_n);

  if (fd[dump_fd] != -1 && dump_id) {
    FUNC1 (dump_fd);
  }

  int cur_dump = dump_id;

  if (verbosity > 0) {
    FUNC3 (stderr, "\nSwitching to dump %d\n", cur_dump);
  }

  FUNC4 (dump_name, 100, "dump%03d.%d", cur_dump, dump_type);
  return FUNC2 (dump_fd, dump_name, -1) >= 0;
}