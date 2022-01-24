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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int threads_per_subcore ; 

__attribute__((used)) static int FUNC5(void)
{
	int cpu = FUNC4();
	int thr;

	/* Are we on a primary subcore? */
	if (FUNC1(cpu))
		return 0;

	thr = 0;
	while (++thr < threads_per_subcore)
		if (FUNC0(cpu + thr))
			return 0;

	/* Grab all hw threads so they can't go into the kernel */
	for (thr = 1; thr < threads_per_subcore; ++thr) {
		if (FUNC2(cpu + thr)) {
			/* Couldn't grab one; let the others go */
			do {
				FUNC3(cpu + thr);
			} while (--thr > 0);
			return 0;
		}
	}
	return 1;
}