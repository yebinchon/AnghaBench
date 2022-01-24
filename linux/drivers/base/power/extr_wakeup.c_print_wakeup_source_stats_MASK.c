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
struct wakeup_source {unsigned long active_count; int /*<<< orphan*/  lock; scalar_t__ last_time; int /*<<< orphan*/  expire_count; int /*<<< orphan*/  wakeup_count; int /*<<< orphan*/  event_count; int /*<<< orphan*/  name; scalar_t__ start_prevent_time; scalar_t__ autosleep_enabled; scalar_t__ active; scalar_t__ prevent_sleep_time; scalar_t__ max_time; scalar_t__ total_time; } ;
struct seq_file {int dummy; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m,
				     struct wakeup_source *ws)
{
	unsigned long flags;
	ktime_t total_time;
	ktime_t max_time;
	unsigned long active_count;
	ktime_t active_time;
	ktime_t prevent_sleep_time;

	FUNC5(&ws->lock, flags);

	total_time = ws->total_time;
	max_time = ws->max_time;
	prevent_sleep_time = ws->prevent_sleep_time;
	active_count = ws->active_count;
	if (ws->active) {
		ktime_t now = FUNC1();

		active_time = FUNC2(now, ws->last_time);
		total_time = FUNC0(total_time, active_time);
		if (active_time > max_time)
			max_time = active_time;

		if (ws->autosleep_enabled)
			prevent_sleep_time = FUNC0(prevent_sleep_time,
				FUNC2(now, ws->start_prevent_time));
	} else {
		active_time = 0;
	}

	FUNC4(m, "%-12s\t%lu\t\t%lu\t\t%lu\t\t%lu\t\t%lld\t\t%lld\t\t%lld\t\t%lld\t\t%lld\n",
		   ws->name, active_count, ws->event_count,
		   ws->wakeup_count, ws->expire_count,
		   FUNC3(active_time), FUNC3(total_time),
		   FUNC3(max_time), FUNC3(ws->last_time),
		   FUNC3(prevent_sleep_time));

	FUNC6(&ws->lock, flags);

	return 0;
}