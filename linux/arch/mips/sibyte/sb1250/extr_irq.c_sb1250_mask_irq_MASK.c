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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ R_IMR_INTERRUPT_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sb1250_imr_lock ; 

void FUNC6(int cpu, int irq)
{
	unsigned long flags;
	u64 cur_ints;

	FUNC4(&sb1250_imr_lock, flags);
	cur_ints = FUNC2(FUNC1(FUNC0(cpu) +
					R_IMR_INTERRUPT_MASK));
	cur_ints |= (((u64) 1) << irq);
	FUNC3(cur_ints, FUNC1(FUNC0(cpu) +
					R_IMR_INTERRUPT_MASK));
	FUNC5(&sb1250_imr_lock, flags);
}