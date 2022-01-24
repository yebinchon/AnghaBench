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
 int /*<<< orphan*/  CLOCK_PROCESS_CPUTIME_ID ; 
 int STAT_CNT ; 
 size_t STAT_PERIOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ force_write_stats ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 size_t now ; 
 int** stats ; 
 int* stats_now ; 

void FUNC6 (void) {
  FUNC1();

  FUNC3 (137);

#ifdef HISTORY
  stats_now = stats[now % STAT_PERIOD];
  memset (stats_now, 0, STAT_CNT * sizeof (long long));
  stats_now[6] = get_utime (CLOCK_PROCESS_CPUTIME_ID) * 1e9;
#endif

  if (force_write_stats) {
    FUNC2();
    force_write_stats = 0;
  }
  FUNC0();
}