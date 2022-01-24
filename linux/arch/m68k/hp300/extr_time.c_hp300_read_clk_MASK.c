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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ CLKLSB1 ; 
 scalar_t__ CLKMSB1 ; 
 scalar_t__ CLKSR ; 
 unsigned char CLKSR_INT1 ; 
 scalar_t__ CLOCKBASE ; 
 scalar_t__ INTVAL ; 
 scalar_t__ clk_offset ; 
 scalar_t__ clk_total ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static u64 FUNC3(struct clocksource *cs)
{
	unsigned long flags;
	unsigned char lsb, msb, msb_new;
	u32 ticks;

	FUNC2(flags);
	/* Read current timer 1 value */
	msb = FUNC0(CLOCKBASE + CLKMSB1);
again:
	if ((FUNC0(CLOCKBASE + CLKSR) & CLKSR_INT1) && msb > 0)
		clk_offset = INTVAL;
	lsb = FUNC0(CLOCKBASE + CLKLSB1);
	msb_new = FUNC0(CLOCKBASE + CLKMSB1);
	if (msb_new != msb) {
		msb = msb_new;
		goto again;
	}

	ticks = INTVAL - ((msb << 8) | lsb);
	ticks += clk_offset + clk_total;
	FUNC1(flags);

	return ticks;
}