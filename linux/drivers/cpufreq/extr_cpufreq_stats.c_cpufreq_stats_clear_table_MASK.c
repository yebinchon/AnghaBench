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
typedef  int /*<<< orphan*/  u64 ;
struct cpufreq_stats {unsigned int max_state; int /*<<< orphan*/  lock; scalar_t__ total_trans; int /*<<< orphan*/  last_time; int /*<<< orphan*/  trans_table; int /*<<< orphan*/  time_in_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cpufreq_stats *stats)
{
	unsigned int count = stats->max_state;

	FUNC2(&stats->lock);
	FUNC1(stats->time_in_state, 0, count * sizeof(u64));
	FUNC1(stats->trans_table, 0, count * count * sizeof(int));
	stats->last_time = FUNC0();
	stats->total_trans = 0;
	FUNC3(&stats->lock);
}