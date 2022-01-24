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
typedef  int u64 ;
typedef  int u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCFSLT_SCNT ; 
 int /*<<< orphan*/  MCFSLT_SSR ; 
 int MCFSLT_SSR_TE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int mcfslt_cnt ; 
 int mcfslt_cycles_per_jiffy ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	unsigned long flags;
	u32 cycles, scnt;

	FUNC3(flags);
	scnt = FUNC1(FUNC0(MCFSLT_SCNT));
	cycles = mcfslt_cnt;
	if (FUNC1(FUNC0(MCFSLT_SSR)) & MCFSLT_SSR_TE) {
		cycles += mcfslt_cycles_per_jiffy;
		scnt = FUNC1(FUNC0(MCFSLT_SCNT));
	}
	FUNC2(flags);

	/* subtract because slice timers count down */
	return cycles + ((mcfslt_cycles_per_jiffy - 1) - scnt);
}