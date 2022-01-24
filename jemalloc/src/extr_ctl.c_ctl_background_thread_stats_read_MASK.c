#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_5__ {int /*<<< orphan*/  max_counter_per_bg_thd; int /*<<< orphan*/  run_interval; } ;
typedef  TYPE_1__ background_thread_stats_t ;
struct TYPE_6__ {int /*<<< orphan*/ * mutex_prof_data; TYPE_1__ background_thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__* ctl_stats ; 
 size_t global_prof_mutex_max_per_bg_thd ; 
 int /*<<< orphan*/  have_background_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(tsdn_t *tsdn) {
	background_thread_stats_t *stats = &ctl_stats->background_thread;
	if (!have_background_thread ||
	    FUNC0(tsdn, stats)) {
		FUNC2(stats, 0, sizeof(background_thread_stats_t));
		FUNC3(&stats->run_interval, 0);
	}
	FUNC1(
	    &ctl_stats->mutex_prof_data[global_prof_mutex_max_per_bg_thd],
	    &stats->max_counter_per_bg_thd);
}