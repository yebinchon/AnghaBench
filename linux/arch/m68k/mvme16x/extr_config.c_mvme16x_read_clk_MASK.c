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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCCTCNT1 ; 
 int /*<<< orphan*/  PCCTOVR1 ; 
 int PCC_TIMER_CYCLES ; 
 scalar_t__ clk_total ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	unsigned long flags;
	u8 overflow, tmp;
	u32 ticks;

	FUNC3(flags);
	tmp = FUNC0(PCCTOVR1) >> 4;
	ticks = FUNC1(PCCTCNT1);
	overflow = FUNC0(PCCTOVR1) >> 4;
	if (overflow != tmp)
		ticks = FUNC1(PCCTCNT1);
	ticks += overflow * PCC_TIMER_CYCLES;
	ticks += clk_total;
	FUNC2(flags);

	return ticks;
}