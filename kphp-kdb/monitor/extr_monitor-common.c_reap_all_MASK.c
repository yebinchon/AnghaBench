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
 int /*<<< orphan*/ * active_pids ; 
 int active_pnum ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  last_check_time ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (void) {
  int cnt = 0, i;
  last_check_time = FUNC0 (1000000);
  for (i = 0; i < active_pnum; i++) {
    if (FUNC1 (active_pids[i]) > 1) {
      cnt++;
    }
  }
  return cnt;
}