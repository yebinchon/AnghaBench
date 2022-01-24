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
typedef  scalar_t__ u16 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCFPIT_PCNTR ; 
 scalar_t__ PIT_CYCLES_PER_JIFFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ pit_cnt ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	unsigned long flags;
	u32 cycles;
	u16 pcntr;

	FUNC3(flags);
	pcntr = FUNC1(FUNC0(MCFPIT_PCNTR));
	cycles = pit_cnt;
	FUNC2(flags);

	return cycles + PIT_CYCLES_PER_JIFFY - pcntr;
}