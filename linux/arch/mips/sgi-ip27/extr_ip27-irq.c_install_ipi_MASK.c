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
 int CPU_CALL_A_IRQ ; 
 int CPU_RESCHED_A_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  PI_CPU_NUM ; 
 int /*<<< orphan*/  PI_INT_MASK0_A ; 
 int /*<<< orphan*/  PI_INT_MASK0_B ; 
 int /*<<< orphan*/  PI_INT_MASK1_A ; 
 int /*<<< orphan*/  PI_INT_MASK1_B ; 
 int /*<<< orphan*/  irq_enable_mask ; 
 unsigned long* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long*) ; 
 int FUNC5 () ; 

void FUNC6(void)
{
	int cpu = FUNC5();
	unsigned long *mask = FUNC3(irq_enable_mask, cpu);
	int slice = FUNC1(PI_CPU_NUM);
	int resched, call;

	resched = CPU_RESCHED_A_IRQ + slice;
	FUNC4(resched, mask);
	FUNC0(resched);

	call = CPU_CALL_A_IRQ + slice;
	FUNC4(call, mask);
	FUNC0(call);

	if (slice == 0) {
		FUNC2(PI_INT_MASK0_A, mask[0]);
		FUNC2(PI_INT_MASK1_A, mask[1]);
	} else {
		FUNC2(PI_INT_MASK0_B, mask[0]);
		FUNC2(PI_INT_MASK1_B, mask[1]);
	}
}