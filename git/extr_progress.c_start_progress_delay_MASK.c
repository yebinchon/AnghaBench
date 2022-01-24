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
typedef  int /*<<< orphan*/  uint64_t ;
struct progress {char const* title; int last_value; int last_percent; unsigned int delay; unsigned int sparse; scalar_t__ split; int /*<<< orphan*/  title_len; int /*<<< orphan*/  counters_sb; int /*<<< orphan*/  start_ns; int /*<<< orphan*/ * throughput; int /*<<< orphan*/  total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct progress* FUNC4 (int) ; 

__attribute__((used)) static struct progress *FUNC5(const char *title, uint64_t total,
					     unsigned delay, unsigned sparse)
{
	struct progress *progress = FUNC4(sizeof(*progress));
	progress->title = title;
	progress->total = total;
	progress->last_value = -1;
	progress->last_percent = -1;
	progress->delay = delay;
	progress->sparse = sparse;
	progress->throughput = NULL;
	progress->start_ns = FUNC0();
	FUNC2(&progress->counters_sb, 0);
	progress->title_len = FUNC3(title);
	progress->split = 0;
	FUNC1();
	return progress;
}