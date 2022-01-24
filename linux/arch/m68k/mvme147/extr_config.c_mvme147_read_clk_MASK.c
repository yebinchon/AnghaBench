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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct clocksource {int dummy; } ;
struct TYPE_2__ {int t1_cntrl; scalar_t__ t1_count; } ;

/* Variables and functions */
 int PCC_TIMER_CYCLES ; 
 scalar_t__ PCC_TIMER_PRELOAD ; 
 scalar_t__ clk_total ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* m147_pcc ; 

__attribute__((used)) static u64 FUNC2(struct clocksource *cs)
{
	unsigned long flags;
	u8 overflow, tmp;
	u16 count;
	u32 ticks;

	FUNC1(flags);
	tmp = m147_pcc->t1_cntrl >> 4;
	count = m147_pcc->t1_count;
	overflow = m147_pcc->t1_cntrl >> 4;
	if (overflow != tmp)
		count = m147_pcc->t1_count;
	count -= PCC_TIMER_PRELOAD;
	ticks = count + overflow * PCC_TIMER_CYCLES;
	ticks += clk_total;
	FUNC0(flags);

	return ticks;
}