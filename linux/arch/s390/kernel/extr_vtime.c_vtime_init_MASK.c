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
 int /*<<< orphan*/  MT_DIAG ; 
 int /*<<< orphan*/  VTIMER_MAX_SLICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  mt_cycles ; 
 int /*<<< orphan*/  mt_scaling_div ; 
 int /*<<< orphan*/  mt_scaling_jiffies ; 
 int /*<<< orphan*/  mt_scaling_mult ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ smp_cpu_mtid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	/* set initial cpu timer */
	FUNC1(VTIMER_MAX_SLICE);
	/* Setup initial MT scaling values */
	if (smp_cpu_mtid) {
		FUNC0(mt_scaling_jiffies, jiffies);
		FUNC0(mt_scaling_mult, 1);
		FUNC0(mt_scaling_div, 1);
		FUNC2(MT_DIAG, smp_cpu_mtid + 1, FUNC3(mt_cycles));
	}
}