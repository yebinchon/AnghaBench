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
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_DB_DISABLED ; 
 int XCHAL_NUM_DBREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct perf_event*) ; 
 struct perf_event** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 

void FUNC3(void)
{
	int i;

	for (i = 0; i < XCHAL_NUM_DBREAK; ++i) {
		struct perf_event *bp = FUNC2(wp_on_reg)[i];

		if (bp)
			FUNC1(i, bp);
	}
	FUNC0(TIF_DB_DISABLED);
}