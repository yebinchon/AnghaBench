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
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  acq ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* local_tlb_flush_counts ; 
 size_t FUNC2 () ; 

void
FUNC3(void)
{
	/*
	 * Use atomic ops. Otherwise, the load/increment/store sequence from
	 * a "++" operation can have the line stolen between the load & store.
	 * The overhead of the atomic op in negligible in this case & offers
	 * significant benefit for the brief periods where lots of cpus
	 * are simultaneously flushing TLBs.
	 */
	FUNC0(1, &local_tlb_flush_counts[FUNC2()].count, acq);
	FUNC1();
}