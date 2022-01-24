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
 char* database_dump_prefix ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ,int) ; 
 size_t dump_fd ; 
 int /*<<< orphan*/  dump_name ; 
 int engine_n ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (int dump_id) {
  FUNC0 (0 <= dump_id && dump_id < engine_n && database_dump_prefix != NULL);

  if (fd[dump_fd] != -1) {
    FUNC1 (dump_fd);
  }

  int cur_dump = dump_id;

  if (verbosity > 0) {
    FUNC4 (stderr, "\nSwitching to database dump %d, memory_used = %d\n", cur_dump, FUNC2());
  }

  FUNC5 (dump_name, 100, "%s%03d.dump", database_dump_prefix, cur_dump);
  return FUNC3 (dump_fd, dump_name, -1) >= 0;
}