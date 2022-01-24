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
struct arch_hw_breakpoint {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 scalar_t__ SREG_IBREAKA ; 
 int /*<<< orphan*/  SREG_IBREAKENABLE ; 
 struct arch_hw_breakpoint* FUNC0 (struct perf_event*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(int reg, struct perf_event *bp)
{
	struct arch_hw_breakpoint *info = FUNC0(bp);
	unsigned long ibreakenable;

	FUNC3(info->address, SREG_IBREAKA + reg);
	ibreakenable = FUNC1(SREG_IBREAKENABLE);
	FUNC2(ibreakenable | (1 << reg), SREG_IBREAKENABLE);
}