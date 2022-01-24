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
typedef  int uint64_t ;
struct throughput {int prev_total; int curr_total; int prev_ns; unsigned int avg_bytes; unsigned int avg_misecs; unsigned int* last_bytes; size_t idx; unsigned int* last_misecs; int /*<<< orphan*/  display; } ;
struct progress {int last_value; struct throughput* throughput; } ;

/* Variables and functions */
 int TP_IDX_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct progress*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct progress*) ; 
 scalar_t__ progress_update ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned int) ; 
 struct throughput* FUNC4 (int,int) ; 

void FUNC5(struct progress *progress, uint64_t total)
{
	struct throughput *tp;
	uint64_t now_ns;
	unsigned int misecs, count, rate;

	if (!progress)
		return;
	tp = progress->throughput;

	now_ns = FUNC1(progress);

	if (!tp) {
		progress->throughput = tp = FUNC4(1, sizeof(*tp));
		tp->prev_total = tp->curr_total = total;
		tp->prev_ns = now_ns;
		FUNC2(&tp->display, 0);
		return;
	}
	tp->curr_total = total;

	/* only update throughput every 0.5 s */
	if (now_ns - tp->prev_ns <= 500000000)
		return;

	/*
	 * We have x = bytes and y = nanosecs.  We want z = KiB/s:
	 *
	 *	z = (x / 1024) / (y / 1000000000)
	 *	z = x / y * 1000000000 / 1024
	 *	z = x / (y * 1024 / 1000000000)
	 *	z = x / y'
	 *
	 * To simplify things we'll keep track of misecs, or 1024th of a sec
	 * obtained with:
	 *
	 *	y' = y * 1024 / 1000000000
	 *	y' = y * (2^10 / 2^42) * (2^42 / 1000000000)
	 *	y' = y / 2^32 * 4398
	 *	y' = (y * 4398) >> 32
	 */
	misecs = ((now_ns - tp->prev_ns) * 4398) >> 32;

	count = total - tp->prev_total;
	tp->prev_total = total;
	tp->prev_ns = now_ns;
	tp->avg_bytes += count;
	tp->avg_misecs += misecs;
	rate = tp->avg_bytes / tp->avg_misecs;
	tp->avg_bytes -= tp->last_bytes[tp->idx];
	tp->avg_misecs -= tp->last_misecs[tp->idx];
	tp->last_bytes[tp->idx] = count;
	tp->last_misecs[tp->idx] = misecs;
	tp->idx = (tp->idx + 1) % TP_IDX_MAX;

	FUNC3(&tp->display, total, rate);
	if (progress->last_value != -1 && progress_update)
		FUNC0(progress, progress->last_value, NULL);
}