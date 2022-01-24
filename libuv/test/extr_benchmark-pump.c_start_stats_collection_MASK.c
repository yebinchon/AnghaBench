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
 int /*<<< orphan*/  STATS_COUNT ; 
 int /*<<< orphan*/  STATS_INTERVAL ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  show_stats ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stats_left ; 
 int /*<<< orphan*/  timer_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
  int r;

  /* Show-stats timer */
  stats_left = STATS_COUNT;
  r = FUNC2(loop, &timer_handle);
  FUNC0(r == 0);
  r = FUNC3(&timer_handle, show_stats, STATS_INTERVAL, STATS_INTERVAL);
  FUNC0(r == 0);

  FUNC4(loop);
  start_time = FUNC1(loop);
}