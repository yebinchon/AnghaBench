#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ scanned; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 TYPE_1__* Dirs ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const* const) ; 

void FUNC3 (const char *const path, int dir_id) {
  Dirs[dir_id].path = FUNC2 (path);
  Dirs[dir_id].scanned = 0;
  int r = FUNC1 (dir_id);
  if (r < 0) {
    FUNC0 ("storage_scan_dir (%d) returns error code %d.\n", dir_id, r);
  }
}