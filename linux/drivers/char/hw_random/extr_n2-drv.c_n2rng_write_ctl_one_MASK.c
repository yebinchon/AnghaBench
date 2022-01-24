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
struct n2rng {int hvapi_major; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 unsigned long N2RNG_ACCUM_CYCLES_DEFAULT ; 
 unsigned long FUNC0 (struct n2rng*,int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long,unsigned long,int) ; 

__attribute__((used)) static unsigned long FUNC3(struct n2rng *np, int unit,
					 unsigned long state,
					 unsigned long control_ra,
					 unsigned long watchdog_timeout,
					 unsigned long *ticks)
{
	unsigned long hv_err;

	if (np->hvapi_major == 1) {
		hv_err = FUNC1(control_ra, state,
						watchdog_timeout, ticks);
	} else {
		hv_err = FUNC2(control_ra, state,
						watchdog_timeout, unit);
		if (hv_err == HV_EOK)
			hv_err = FUNC0(np, unit);
		*ticks = N2RNG_ACCUM_CYCLES_DEFAULT;
	}

	return hv_err;
}