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
typedef  int /*<<< orphan*/  kfs_file_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_load_time ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

void FUNC6 (kfs_file_handle_t Index) {
  index_load_time = -FUNC3 (CLOCK_MONOTONIC);
  bool index_loaded = FUNC5 (Index);
  index_load_time += FUNC3 (CLOCK_MONOTONIC);

  if (!index_loaded) {
    FUNC2 (stderr, "fatal: error while loading index file %s\n", engine_snapshot_name);
    FUNC1 (1);
  }

  if (verbosity > 0) {
    FUNC2 (stderr, "load index: done, jump_log_pos=%s, time %.6ds\n", jump_log_pos, index_load_time);
  }

  // initialize zmalloc and etc..
  FUNC4();

  FUNC0();
}