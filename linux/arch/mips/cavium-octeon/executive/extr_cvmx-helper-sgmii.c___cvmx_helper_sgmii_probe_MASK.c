#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int en; } ;
union cvmx_gmxx_inf_mode {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(int interface)
{
	union cvmx_gmxx_inf_mode mode;

	/*
	 * Due to errata GMX-700 on CN56XXp1.x and CN52XXp1.x, the
	 * interface needs to be enabled before IPD otherwise per port
	 * backpressure may not work properly
	 */
	mode.u64 = FUNC2(FUNC0(interface));
	mode.s.en = 1;
	FUNC3(FUNC0(interface), mode.u64);
	return FUNC1(interface);
}